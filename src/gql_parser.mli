
(* The type of tokens. *)

type token = 
  | UNION
  | TYPE
  | TRUE
  | SUBSCRIPTION
  | STRING of (string)
  | SPREAD
  | SCHEMA
  | SCALAR
  | RIGHT_PAREN
  | RIGHT_BRACK
  | RIGHT_BRACE
  | QUERY
  | PIPE
  | NULL
  | NAME of (string)
  | MUTATION
  | LEFT_PAREN
  | LEFT_BRACK
  | LEFT_BRACE
  | INTERFACE
  | INT of (int)
  | INPUT
  | IMPLEMENTS
  | FLOAT of (float)
  | FALSE
  | EXTEND
  | EQUALS
  | EOF
  | ENUM
  | DOLLAR
  | COLON
  | BLOCK_STRING of (string)
  | BANG
  | AT
  | AMP

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Gql_ast.document)
