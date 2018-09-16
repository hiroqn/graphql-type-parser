{
  open Lexing
  open Parser

  exception SyntaxError of string

  let next_line lexbuf =
    let pos = lexbuf.lex_curr_p in
    lexbuf.lex_curr_p <-
      {
        pos with pos_bol = lexbuf.lex_curr_pos;
        pos_lnum = pos.pos_lnum + 1;
      }
  let repeat n = match n with
    | 1 -> "\""
    | 2 -> "\"\""
    | 3 -> "\"\"\""
    | _ -> ""
}

let int = '-'? '0' | '-'? ['1'-'9'] ['0'-'9']*
let digit = ['0'-'9']
let frac = '.' digit*
let exp = ['e' 'E'] ['-' '+']? digit*
let float = int frac | int exp | int frac exp
let white = [' ' '\t']+
let newline = '\r' | '\n' | "\r\n"
let alpha = ['_' 'a'-'z' 'A'-'Z' ]
let name = alpha (alpha | digit)*

(* TODO crlf *)
let comment = '#' [^ '\r' '\n' ]*

rule read =
  parse
  | white           { read lexbuf }
  | newline         { next_line lexbuf; read lexbuf }
  | int             { INT (int_of_string (Lexing.lexeme lexbuf)) }
  | float           { FLOAT (float_of_string (Lexing.lexeme lexbuf)) }
  | "true"          { TRUE }
  | "false"         { FALSE }
  | "null"          { NULL }
  | '!'             { BANG }
  | '$'             { DOLLAR }
  | '&'             { AMP }
  | '('             { LEFT_PAREN }
  | ')'             { RIGHT_PAREN }
  | "..."           { SPREAD }
  | ':'             { COLON }
  | '='             { EQUALS }
  | '@'             { AT }
  | '['             { LEFT_BRACK }
  | ']'             { RIGHT_BRACK }
  | '{'             { LEFT_BRACE }
  | '|'             { PIPE }
  | '}'             { RIGHT_BRACE }
  | "\"\"\""        { read_block_string 0 false (Buffer.create 17) lexbuf }
  | '"'             { read_string (Buffer.create 17) lexbuf }
  | "scalar"        { SCALAR }
  | "type"          { TYPE }
  | "interface"     { INTERFACE }
  | "union"         { UNION }
  | "enum"          { ENUM }
  | "input"         { INPUT }
  | "implements"    { IMPLEMENTS }
  | "extend"        { EXTEND }
  | "schema"        { SCHEMA }
  | "query"         { QUERY }
  | "mutation"      { MUTATION }
  | "subscription"  { SUBSCRIPTION }
  | ','             { read lexbuf }
  | eof             { EOF }
  | name            { NAME (Lexing.lexeme lexbuf) }
  | comment         { read lexbuf }
  | _               { raise (SyntaxError ("Unexpected char: " ^ Lexing.lexeme lexbuf)) }

(* rules for reading a string *)
and read_string buf =
  parse
  | '"'       { STRING (Buffer.contents buf) }
  | '\\' '/'  { Buffer.add_char buf '/'; read_string buf lexbuf }
  | '\\' '\\' { Buffer.add_char buf '\\'; read_string buf lexbuf }
  | '\\' 'b'  { Buffer.add_char buf '\b'; read_string buf lexbuf }
  | '\\' 'f'  { Buffer.add_char buf '\012'; read_string buf lexbuf }
  | '\\' 'n'  { Buffer.add_char buf '\n'; read_string buf lexbuf }
  | '\\' 'r'  { Buffer.add_char buf '\r'; read_string buf lexbuf }
  | '\\' 't'  { Buffer.add_char buf '\t'; read_string buf lexbuf }
  | [^ '"']+ newline
    {
       raise (SyntaxError "String is not terminated")
    }
  | [^ '"' '\\']+
    {
      Buffer.add_string buf (Lexing.lexeme lexbuf);
      read_string buf lexbuf
    }
  | _ { raise (SyntaxError ("Illegal string character: " ^ Lexing.lexeme lexbuf)) }
  | eof { raise (SyntaxError ("String is not terminated")) }

and read_block_string n escaped buf =
  parse
  | [^ '"' '\\']+
    {
      if (escaped) then
        Buffer.add_char buf '\\';
      if (n > 0) then
        Buffer.add_string buf (repeat n);
      Buffer.add_string buf (Lexing.lexeme lexbuf);
      read_block_string 0 false buf lexbuf
    }
  | '\\'
    {
      if (escaped) then
        Buffer.add_char buf '\\';
      if (n > 0) then
        Buffer.add_string buf (repeat n);
      read_block_string 0 true buf lexbuf
    }
  | '"'
    {
      match (n, escaped) with
      | (2, true) ->
        Buffer.add_string buf (repeat 2);
        read_block_string 0 false buf lexbuf
      | (2, false) ->
        BLOCK_STRING (Buffer.contents buf)
      | _ ->
        read_block_string (n + 1) escaped buf lexbuf
    }
  | _ { raise (SyntaxError ("Illegal string character: " ^ Lexing.lexeme lexbuf)) }
  | eof { raise (SyntaxError ("BlockString is not terminated")) }
