
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | UNION
    | TYPE
    | TRUE
    | SUBSCRIPTION
    | STRING of (
# 10 "src/gql_parser.mly"
       (string)
# 15 "src/gql_parser.ml"
  )
    | SPREAD
    | SCHEMA
    | SCALAR
    | RIGHT_PAREN
    | RIGHT_BRACK
    | RIGHT_BRACE
    | QUERY
    | PIPE
    | NULL
    | NAME of (
# 11 "src/gql_parser.mly"
       (string)
# 29 "src/gql_parser.ml"
  )
    | MUTATION
    | LEFT_PAREN
    | LEFT_BRACK
    | LEFT_BRACE
    | INTERFACE
    | INT of (
# 7 "src/gql_parser.mly"
       (int)
# 39 "src/gql_parser.ml"
  )
    | INPUT
    | IMPLEMENTS
    | FLOAT of (
# 8 "src/gql_parser.mly"
       (float)
# 46 "src/gql_parser.ml"
  )
    | FALSE
    | EXTEND
    | EQUALS
    | EOF
    | ENUM
    | DOLLAR
    | COLON
    | BLOCK_STRING of (
# 9 "src/gql_parser.mly"
       (string)
# 58 "src/gql_parser.ml"
  )
    | BANG
    | AT
    | AMP
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState161
  | MenhirState156
  | MenhirState155
  | MenhirState154
  | MenhirState152
  | MenhirState149
  | MenhirState147
  | MenhirState144
  | MenhirState141
  | MenhirState135
  | MenhirState133
  | MenhirState131
  | MenhirState129
  | MenhirState128
  | MenhirState127
  | MenhirState125
  | MenhirState120
  | MenhirState109
  | MenhirState105
  | MenhirState93
  | MenhirState91
  | MenhirState90
  | MenhirState78
  | MenhirState72
  | MenhirState71
  | MenhirState69
  | MenhirState68
  | MenhirState67
  | MenhirState65
  | MenhirState64
  | MenhirState63
  | MenhirState59
  | MenhirState57
  | MenhirState56
  | MenhirState55
  | MenhirState51
  | MenhirState48
  | MenhirState46
  | MenhirState45
  | MenhirState44
  | MenhirState40
  | MenhirState33
  | MenhirState29
  | MenhirState27
  | MenhirState24
  | MenhirState5
  | MenhirState3
  | MenhirState0

# 51 "src/gql_parser.mly"
  
  open Gql_ast

# 132 "src/gql_parser.ml"

let rec _menhir_goto_list_read_value_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_read_value_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState109 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv595 * _menhir_state * 'tv_read_value) * _menhir_state * 'tv_list_read_value_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv593 * _menhir_state * 'tv_read_value) * _menhir_state * 'tv_list_read_value_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_read_value)), _, (xs : 'tv_list_read_value_)) = _menhir_stack in
        let _v : 'tv_list_read_value_ = 
# 213 "/nix/store/ll05yw650dpkid4q7n30xn317g16izq7-menhir-20181113/share/menhir/standard.mly"
    ( x :: xs )
# 147 "src/gql_parser.ml"
         in
        _menhir_goto_list_read_value_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv594)) : 'freshtv596)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv603 * _menhir_state) * _menhir_state * 'tv_list_read_value_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RIGHT_BRACK ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv599 * _menhir_state) * _menhir_state * 'tv_list_read_value_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv597 * _menhir_state) * _menhir_state * 'tv_list_read_value_) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (value : 'tv_list_read_value_)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_read_value = 
# 309 "src/gql_parser.mly"
    ( `List value )
# 168 "src/gql_parser.ml"
             in
            _menhir_goto_read_value _menhir_env _menhir_stack _menhir_s _v) : 'freshtv598)) : 'freshtv600)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv601 * _menhir_state) * _menhir_state * 'tv_list_read_value_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv602)) : 'freshtv604)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_read_object_field_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_read_object_field_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState105 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv583 * _menhir_state * 'tv_read_object_field) * _menhir_state * 'tv_list_read_object_field_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv581 * _menhir_state * 'tv_read_object_field) * _menhir_state * 'tv_list_read_object_field_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_read_object_field)), _, (xs : 'tv_list_read_object_field_)) = _menhir_stack in
        let _v : 'tv_list_read_object_field_ = 
# 213 "/nix/store/ll05yw650dpkid4q7n30xn317g16izq7-menhir-20181113/share/menhir/standard.mly"
    ( x :: xs )
# 194 "src/gql_parser.ml"
         in
        _menhir_goto_list_read_object_field_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv582)) : 'freshtv584)
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv591 * _menhir_state) * _menhir_state * 'tv_list_read_object_field_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RIGHT_BRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv587 * _menhir_state) * _menhir_state * 'tv_list_read_object_field_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv585 * _menhir_state) * _menhir_state * 'tv_list_read_object_field_) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (value : 'tv_list_read_object_field_)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_read_value = 
# 311 "src/gql_parser.mly"
    ( `Assoc value )
# 215 "src/gql_parser.ml"
             in
            _menhir_goto_read_value _menhir_env _menhir_stack _menhir_s _v) : 'freshtv586)) : 'freshtv588)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv589 * _menhir_state) * _menhir_state * 'tv_list_read_object_field_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv590)) : 'freshtv592)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_read_field_definition_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_read_field_definition_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv563 * _menhir_state * 'tv_read_field_definition) * _menhir_state * 'tv_list_read_field_definition_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv561 * _menhir_state * 'tv_read_field_definition) * _menhir_state * 'tv_list_read_field_definition_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_read_field_definition)), _, (xs : 'tv_list_read_field_definition_)) = _menhir_stack in
        let _v : 'tv_list_read_field_definition_ = 
# 213 "/nix/store/ll05yw650dpkid4q7n30xn317g16izq7-menhir-20181113/share/menhir/standard.mly"
    ( x :: xs )
# 241 "src/gql_parser.ml"
         in
        _menhir_goto_list_read_field_definition_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv562)) : 'freshtv564)
    | MenhirState63 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv571 * _menhir_state * 'tv_read_description)) * _menhir_state * 'tv_read_name) * 'tv_read_interfaces)) * _menhir_state * 'tv_list_read_field_definition_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RIGHT_BRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv567 * _menhir_state * 'tv_read_description)) * _menhir_state * 'tv_read_name) * 'tv_read_interfaces)) * _menhir_state * 'tv_list_read_field_definition_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv565 * _menhir_state * 'tv_read_description)) * _menhir_state * 'tv_read_name) * 'tv_read_interfaces)) * _menhir_state * 'tv_list_read_field_definition_) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s, (description : 'tv_read_description)), _, (name : 'tv_read_name)), (interfaces : 'tv_read_interfaces)), _, (fields : 'tv_list_read_field_definition_)) = _menhir_stack in
            let _7 = () in
            let _5 = () in
            let _2 = () in
            let _v : 'tv_read_type_definition = 
# 126 "src/gql_parser.mly"
    (
      ObjectTypeDefinition {
        description;
        name;
        fields;
        interfaces;
      }
    )
# 270 "src/gql_parser.ml"
             in
            _menhir_goto_read_type_definition _menhir_env _menhir_stack _menhir_s _v) : 'freshtv566)) : 'freshtv568)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv569 * _menhir_state * 'tv_read_description)) * _menhir_state * 'tv_read_name) * 'tv_read_interfaces)) * _menhir_state * 'tv_list_read_field_definition_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv570)) : 'freshtv572)
    | MenhirState144 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv579 * _menhir_state * 'tv_read_description)) * _menhir_state * 'tv_read_name) * _menhir_state * 'tv_list_read_directive_)) * _menhir_state * 'tv_list_read_field_definition_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RIGHT_BRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv575 * _menhir_state * 'tv_read_description)) * _menhir_state * 'tv_read_name) * _menhir_state * 'tv_list_read_directive_)) * _menhir_state * 'tv_list_read_field_definition_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv573 * _menhir_state * 'tv_read_description)) * _menhir_state * 'tv_read_name) * _menhir_state * 'tv_list_read_directive_)) * _menhir_state * 'tv_list_read_field_definition_) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s, (description : 'tv_read_description)), _, (name : 'tv_read_name)), _, (directives : 'tv_list_read_directive_)), _, (fields : 'tv_list_read_field_definition_)) = _menhir_stack in
            let _7 = () in
            let _5 = () in
            let _2 = () in
            let _v : 'tv_read_type_definition = 
# 154 "src/gql_parser.mly"
    (
      InterfaceTypeDefinition {
        description;
        name;
        fields;
        directives;
      }
    )
# 306 "src/gql_parser.ml"
             in
            _menhir_goto_read_type_definition _menhir_env _menhir_stack _menhir_s _v) : 'freshtv574)) : 'freshtv576)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv577 * _menhir_state * 'tv_read_description)) * _menhir_state * 'tv_read_name) * _menhir_state * 'tv_list_read_directive_)) * _menhir_state * 'tv_list_read_field_definition_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv578)) : 'freshtv580)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_read_enum_value_definition_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_read_enum_value_definition_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState155 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv551 * _menhir_state * 'tv_read_enum_value_definition) * _menhir_state * 'tv_list_read_enum_value_definition_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv549 * _menhir_state * 'tv_read_enum_value_definition) * _menhir_state * 'tv_list_read_enum_value_definition_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_read_enum_value_definition)), _, (xs : 'tv_list_read_enum_value_definition_)) = _menhir_stack in
        let _v : 'tv_list_read_enum_value_definition_ = 
# 213 "/nix/store/ll05yw650dpkid4q7n30xn317g16izq7-menhir-20181113/share/menhir/standard.mly"
    ( x :: xs )
# 332 "src/gql_parser.ml"
         in
        _menhir_goto_list_read_enum_value_definition_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv550)) : 'freshtv552)
    | MenhirState154 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv559 * _menhir_state * 'tv_read_description)) * _menhir_state * 'tv_read_name)) * _menhir_state * 'tv_list_read_enum_value_definition_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RIGHT_BRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv555 * _menhir_state * 'tv_read_description)) * _menhir_state * 'tv_read_name)) * _menhir_state * 'tv_list_read_enum_value_definition_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv553 * _menhir_state * 'tv_read_description)) * _menhir_state * 'tv_read_name)) * _menhir_state * 'tv_list_read_enum_value_definition_) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (description : 'tv_read_description)), _, (name : 'tv_read_name)), _, (values : 'tv_list_read_enum_value_definition_)) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_read_type_definition = 
# 140 "src/gql_parser.mly"
    (
      EnumTypeDefinition {
        description;
        name;
        values;
      }
    )
# 360 "src/gql_parser.ml"
             in
            _menhir_goto_read_type_definition _menhir_env _menhir_stack _menhir_s _v) : 'freshtv554)) : 'freshtv556)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv557 * _menhir_state * 'tv_read_description)) * _menhir_state * 'tv_read_name)) * _menhir_state * 'tv_list_read_enum_value_definition_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv558)) : 'freshtv560)
    | _ ->
        _menhir_fail ()

and _menhir_reduce19 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_read_value_ = 
# 211 "/nix/store/ll05yw650dpkid4q7n30xn317g16izq7-menhir-20181113/share/menhir/standard.mly"
    ( [] )
# 378 "src/gql_parser.ml"
     in
    _menhir_goto_list_read_value_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce13 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_read_object_field_ = 
# 211 "/nix/store/ll05yw650dpkid4q7n30xn317g16izq7-menhir-20181113/share/menhir/standard.mly"
    ( [] )
# 387 "src/gql_parser.ml"
     in
    _menhir_goto_list_read_object_field_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run92 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 11 "src/gql_parser.mly"
       (string)
# 394 "src/gql_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv545 * _menhir_state * (
# 11 "src/gql_parser.mly"
       (string)
# 406 "src/gql_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BLOCK_STRING _v ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
        | ENUM ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | EXTEND ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | FALSE ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | FLOAT _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
        | IMPLEMENTS ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | INPUT ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | INT _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
        | INTERFACE ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | LEFT_BRACE ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | LEFT_BRACK ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | MUTATION ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | NAME _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
        | NULL ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | QUERY ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | SCALAR ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | SCHEMA ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | STRING _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
        | SUBSCRIPTION ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | TRUE ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | TYPE ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | UNION ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState93) : 'freshtv546)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv547 * _menhir_state * (
# 11 "src/gql_parser.mly"
       (string)
# 466 "src/gql_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv548)

and _menhir_goto_list_read_argument_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_read_argument_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState135 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv529 * _menhir_state * 'tv_read_argument) * _menhir_state * 'tv_list_read_argument_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv527 * _menhir_state * 'tv_read_argument) * _menhir_state * 'tv_list_read_argument_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_read_argument)), _, (xs : 'tv_list_read_argument_)) = _menhir_stack in
        let _v : 'tv_list_read_argument_ = 
# 213 "/nix/store/ll05yw650dpkid4q7n30xn317g16izq7-menhir-20181113/share/menhir/standard.mly"
    ( x :: xs )
# 484 "src/gql_parser.ml"
         in
        _menhir_goto_list_read_argument_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv528)) : 'freshtv530)
    | MenhirState131 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv543) * _menhir_state * 'tv_list_read_argument_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RIGHT_PAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv539) * _menhir_state * 'tv_list_read_argument_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv537) * _menhir_state * 'tv_list_read_argument_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _, (arguments : 'tv_list_read_argument_)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_read_arguments = 
# 241 "src/gql_parser.mly"
    (
       arguments;
    )
# 507 "src/gql_parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv535) = _menhir_stack in
            let (_v : 'tv_read_arguments) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv533) = Obj.magic _menhir_stack in
            let (_v : 'tv_read_arguments) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv531) = Obj.magic _menhir_stack in
            let ((x : 'tv_read_arguments) : 'tv_read_arguments) = _v in
            ((let _v : 'tv_option_read_arguments_ = 
# 116 "/nix/store/ll05yw650dpkid4q7n30xn317g16izq7-menhir-20181113/share/menhir/standard.mly"
    ( Some x )
# 521 "src/gql_parser.ml"
             in
            _menhir_goto_option_read_arguments_ _menhir_env _menhir_stack _v) : 'freshtv532)) : 'freshtv534)) : 'freshtv536)) : 'freshtv538)) : 'freshtv540)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv541) * _menhir_state * 'tv_list_read_argument_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv542)) : 'freshtv544)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_read_directive_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_read_directive_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState141 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv519 * _menhir_state * 'tv_read_directive) * _menhir_state * 'tv_list_read_directive_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv517 * _menhir_state * 'tv_read_directive) * _menhir_state * 'tv_list_read_directive_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_read_directive)), _, (xs : 'tv_list_read_directive_)) = _menhir_stack in
        let _v : 'tv_list_read_directive_ = 
# 213 "/nix/store/ll05yw650dpkid4q7n30xn317g16izq7-menhir-20181113/share/menhir/standard.mly"
    ( x :: xs )
# 547 "src/gql_parser.ml"
         in
        _menhir_goto_list_read_directive_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv518)) : 'freshtv520)
    | MenhirState128 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv525 * _menhir_state * 'tv_read_description)) * _menhir_state * 'tv_read_name) * _menhir_state * 'tv_list_read_directive_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFT_BRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv521 * _menhir_state * 'tv_read_description)) * _menhir_state * 'tv_read_name) * _menhir_state * 'tv_list_read_directive_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BLOCK_STRING _v ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _v
            | STRING _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _v
            | ENUM | EXTEND | FALSE | IMPLEMENTS | INPUT | INTERFACE | MUTATION | NAME _ | NULL | QUERY | SCALAR | SCHEMA | SUBSCRIPTION | TRUE | TYPE | UNION ->
                _menhir_reduce40 _menhir_env (Obj.magic _menhir_stack) MenhirState144
            | RIGHT_BRACE ->
                _menhir_reduce9 _menhir_env (Obj.magic _menhir_stack) MenhirState144
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState144) : 'freshtv522)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv523 * _menhir_state * 'tv_read_description)) * _menhir_state * 'tv_read_name) * _menhir_state * 'tv_list_read_directive_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv524)) : 'freshtv526)
    | _ ->
        _menhir_fail ()

and _menhir_goto_option_read_default_value_ : _menhir_env -> 'ttv_tail -> 'tv_option_read_default_value_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((('freshtv515 * _menhir_state * 'tv_read_description) * _menhir_state * 'tv_read_name)) * _menhir_state * 'tv_read_type) = Obj.magic _menhir_stack in
    let (_v : 'tv_option_read_default_value_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((('freshtv513 * _menhir_state * 'tv_read_description) * _menhir_state * 'tv_read_name)) * _menhir_state * 'tv_read_type) = Obj.magic _menhir_stack in
    let ((default_value : 'tv_option_read_default_value_) : 'tv_option_read_default_value_) = _v in
    ((let (((_menhir_stack, _menhir_s, (description : 'tv_read_description)), _, (name : 'tv_read_name)), _, (typ : 'tv_read_type)) = _menhir_stack in
    let _3 = () in
    let _v : 'tv_read_input_value = 
# 274 "src/gql_parser.mly"
    (
      {
        description;
        name;
        typ;
        default_value;
      }
    )
# 604 "src/gql_parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv511) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_read_input_value) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv509 * _menhir_state * 'tv_read_input_value) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BLOCK_STRING _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | STRING _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | ENUM | EXTEND | FALSE | IMPLEMENTS | INPUT | INTERFACE | MUTATION | NAME _ | NULL | QUERY | SCALAR | SCHEMA | SUBSCRIPTION | TRUE | TYPE | UNION ->
        _menhir_reduce40 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | RIGHT_BRACE | RIGHT_PAREN ->
        _menhir_reduce11 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState68) : 'freshtv510)) : 'freshtv512)) : 'freshtv514)) : 'freshtv516)

and _menhir_run75 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_read_type -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv507 * _menhir_state * 'tv_read_type) = Obj.magic _menhir_stack in
    ((let (_menhir_stack, _menhir_s, (t : 'tv_read_type)) = _menhir_stack in
    let _2 = () in
    let _v : 'tv_read_type = 
# 373 "src/gql_parser.mly"
    (
      NonNullType t
    )
# 641 "src/gql_parser.ml"
     in
    _menhir_goto_read_type _menhir_env _menhir_stack _menhir_s _v) : 'freshtv508)

and _menhir_goto_list_read_input_value_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_read_input_value_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv489 * _menhir_state * 'tv_read_input_value) * _menhir_state * 'tv_list_read_input_value_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv487 * _menhir_state * 'tv_read_input_value) * _menhir_state * 'tv_list_read_input_value_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_read_input_value)), _, (xs : 'tv_list_read_input_value_)) = _menhir_stack in
        let _v : 'tv_list_read_input_value_ = 
# 213 "/nix/store/ll05yw650dpkid4q7n30xn317g16izq7-menhir-20181113/share/menhir/standard.mly"
    ( x :: xs )
# 658 "src/gql_parser.ml"
         in
        _menhir_goto_list_read_input_value_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv488)) : 'freshtv490)
    | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv497) * _menhir_state * 'tv_list_read_input_value_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RIGHT_PAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv493) * _menhir_state * 'tv_list_read_input_value_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv491) * _menhir_state * 'tv_list_read_input_value_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _, (arguments : 'tv_list_read_input_value_)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_read_arguments_definition = 
# 263 "src/gql_parser.mly"
    (
      Some arguments
    )
# 681 "src/gql_parser.ml"
             in
            _menhir_goto_read_arguments_definition _menhir_env _menhir_stack _v) : 'freshtv492)) : 'freshtv494)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv495) * _menhir_state * 'tv_list_read_input_value_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv496)) : 'freshtv498)
    | MenhirState149 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv505 * _menhir_state * 'tv_read_description)) * _menhir_state * 'tv_read_name)) * _menhir_state * 'tv_list_read_input_value_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RIGHT_BRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv501 * _menhir_state * 'tv_read_description)) * _menhir_state * 'tv_read_name)) * _menhir_state * 'tv_list_read_input_value_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv499 * _menhir_state * 'tv_read_description)) * _menhir_state * 'tv_read_name)) * _menhir_state * 'tv_list_read_input_value_) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (description : 'tv_read_description)), _, (name : 'tv_read_name)), _, (fields : 'tv_list_read_input_value_)) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_read_type_definition = 
# 182 "src/gql_parser.mly"
    (
      InputObjectTypeDefinition {
        description;
        name;
        fields;
      }
    )
# 716 "src/gql_parser.ml"
             in
            _menhir_goto_read_type_definition _menhir_env _menhir_stack _menhir_s _v) : 'freshtv500)) : 'freshtv502)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv503 * _menhir_state * 'tv_read_description)) * _menhir_state * 'tv_read_name)) * _menhir_state * 'tv_list_read_input_value_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv504)) : 'freshtv506)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_read_rest_interfaces_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_read_rest_interfaces_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState59 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv481 * _menhir_state * 'tv_read_rest_interfaces) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_read_rest_interfaces_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv479 * _menhir_state * 'tv_read_rest_interfaces) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_list_read_rest_interfaces_) : 'tv_list_read_rest_interfaces_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_read_rest_interfaces)) = _menhir_stack in
        let _v : 'tv_list_read_rest_interfaces_ = 
# 213 "/nix/store/ll05yw650dpkid4q7n30xn317g16izq7-menhir-20181113/share/menhir/standard.mly"
    ( x :: xs )
# 745 "src/gql_parser.ml"
         in
        _menhir_goto_list_read_rest_interfaces_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv480)) : 'freshtv482)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv485) * 'tv_option_AMP_) * _menhir_state * 'tv_read_name) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_read_rest_interfaces_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv483) * 'tv_option_AMP_) * _menhir_state * 'tv_read_name) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((rest : 'tv_list_read_rest_interfaces_) : 'tv_list_read_rest_interfaces_) = _v in
        ((let ((_menhir_stack, (_2 : 'tv_option_AMP_)), _, (t : 'tv_read_name)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_read_interfaces = 
# 197 "src/gql_parser.mly"
    (
      Some (t :: rest)
    )
# 764 "src/gql_parser.ml"
         in
        _menhir_goto_read_interfaces _menhir_env _menhir_stack _v) : 'freshtv484)) : 'freshtv486)
    | _ ->
        _menhir_fail ()

and _menhir_reduce9 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_read_field_definition_ = 
# 211 "/nix/store/ll05yw650dpkid4q7n30xn317g16izq7-menhir-20181113/share/menhir/standard.mly"
    ( [] )
# 775 "src/gql_parser.ml"
     in
    _menhir_goto_list_read_field_definition_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_read_value : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_read_value -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState93 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv457 * _menhir_state * (
# 11 "src/gql_parser.mly"
       (string)
# 788 "src/gql_parser.ml"
        ))) * _menhir_state * 'tv_read_value) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv455 * _menhir_state * (
# 11 "src/gql_parser.mly"
       (string)
# 794 "src/gql_parser.ml"
        ))) * _menhir_state * 'tv_read_value) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (key : (
# 11 "src/gql_parser.mly"
       (string)
# 799 "src/gql_parser.ml"
        ))), _, (value : 'tv_read_value)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_read_object_field = 
# 316 "src/gql_parser.mly"
    (
      (key, value)
    )
# 807 "src/gql_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv453) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_read_object_field) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv451 * _menhir_state * 'tv_read_object_field) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | NAME _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
        | RIGHT_BRACE ->
            _menhir_reduce13 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState105) : 'freshtv452)) : 'freshtv454)) : 'freshtv456)) : 'freshtv458)
    | MenhirState109 | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv459 * _menhir_state * 'tv_read_value) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BLOCK_STRING _v ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
        | ENUM ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | EXTEND ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | FALSE ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | FLOAT _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
        | IMPLEMENTS ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | INPUT ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | INT _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
        | INTERFACE ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | LEFT_BRACE ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | LEFT_BRACK ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | MUTATION ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | NAME _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
        | NULL ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | QUERY ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | SCALAR ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | SCHEMA ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | STRING _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
        | SUBSCRIPTION ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | TRUE ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | TYPE ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | UNION ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | RIGHT_BRACK ->
            _menhir_reduce19 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState109) : 'freshtv460)
    | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv469) * _menhir_state * 'tv_read_value) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv467) * _menhir_state * 'tv_read_value) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, (value : 'tv_read_value)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_read_default_value = 
# 287 "src/gql_parser.mly"
    (
      value
    )
# 895 "src/gql_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv465) = _menhir_stack in
        let (_v : 'tv_read_default_value) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv463) = Obj.magic _menhir_stack in
        let (_v : 'tv_read_default_value) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv461) = Obj.magic _menhir_stack in
        let ((x : 'tv_read_default_value) : 'tv_read_default_value) = _v in
        ((let _v : 'tv_option_read_default_value_ = 
# 116 "/nix/store/ll05yw650dpkid4q7n30xn317g16izq7-menhir-20181113/share/menhir/standard.mly"
    ( Some x )
# 909 "src/gql_parser.ml"
         in
        _menhir_goto_option_read_default_value_ _menhir_env _menhir_stack _v) : 'freshtv462)) : 'freshtv464)) : 'freshtv466)) : 'freshtv468)) : 'freshtv470)
    | MenhirState133 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv477 * _menhir_state * 'tv_read_name)) * _menhir_state * 'tv_read_value) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv475 * _menhir_state * 'tv_read_name)) * _menhir_state * 'tv_read_value) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (name : 'tv_read_name)), _, (value : 'tv_read_value)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_read_argument = 
# 250 "src/gql_parser.mly"
    (
       {
          name;
          value;
       }
    )
# 927 "src/gql_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv473) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_read_argument) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv471 * _menhir_state * 'tv_read_argument) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ENUM ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | EXTEND ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | FALSE ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | IMPLEMENTS ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | INPUT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | INTERFACE ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | MUTATION ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | NAME _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
        | NULL ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | QUERY ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | SCALAR ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | SCHEMA ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | SUBSCRIPTION ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | TRUE ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | TYPE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | UNION ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | RIGHT_PAREN ->
            _menhir_reduce1 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState135) : 'freshtv472)) : 'freshtv474)) : 'freshtv476)) : 'freshtv478)
    | _ ->
        _menhir_fail ()

and _menhir_reduce7 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_read_enum_value_definition_ = 
# 211 "/nix/store/ll05yw650dpkid4q7n30xn317g16izq7-menhir-20181113/share/menhir/standard.mly"
    ( [] )
# 985 "src/gql_parser.ml"
     in
    _menhir_goto_list_read_enum_value_definition_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run81 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv449) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_read_value = 
# 301 "src/gql_parser.mly"
    ( `Bool true )
# 999 "src/gql_parser.ml"
     in
    _menhir_goto_read_value _menhir_env _menhir_stack _menhir_s _v) : 'freshtv450)

and _menhir_run83 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "src/gql_parser.mly"
       (string)
# 1006 "src/gql_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv447) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((value : (
# 10 "src/gql_parser.mly"
       (string)
# 1016 "src/gql_parser.ml"
    )) : (
# 10 "src/gql_parser.mly"
       (string)
# 1020 "src/gql_parser.ml"
    )) = _v in
    ((let _v : 'tv_read_value = 
# 293 "src/gql_parser.mly"
    ( `String value )
# 1025 "src/gql_parser.ml"
     in
    _menhir_goto_read_value _menhir_env _menhir_stack _menhir_s _v) : 'freshtv448)

and _menhir_run87 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv445) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_read_value = 
# 305 "src/gql_parser.mly"
    ( `Null )
# 1039 "src/gql_parser.ml"
     in
    _menhir_goto_read_value _menhir_env _menhir_stack _menhir_s _v) : 'freshtv446)

and _menhir_run90 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BLOCK_STRING _v ->
        _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | ENUM ->
        _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | EXTEND ->
        _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | FALSE ->
        _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | FLOAT _v ->
        _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | IMPLEMENTS ->
        _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | INPUT ->
        _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | INT _v ->
        _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | INTERFACE ->
        _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | LEFT_BRACE ->
        _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | LEFT_BRACK ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | MUTATION ->
        _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | NAME _v ->
        _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | NULL ->
        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | QUERY ->
        _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | SCALAR ->
        _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | SCHEMA ->
        _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | STRING _v ->
        _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | SUBSCRIPTION ->
        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | TRUE ->
        _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | TYPE ->
        _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | UNION ->
        _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | RIGHT_BRACK ->
        _menhir_reduce19 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState90

and _menhir_run91 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | NAME _v ->
        _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
    | RIGHT_BRACE ->
        _menhir_reduce13 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState91

and _menhir_run95 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 7 "src/gql_parser.mly"
       (int)
# 1118 "src/gql_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv443) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((value : (
# 7 "src/gql_parser.mly"
       (int)
# 1128 "src/gql_parser.ml"
    )) : (
# 7 "src/gql_parser.mly"
       (int)
# 1132 "src/gql_parser.ml"
    )) = _v in
    ((let _v : 'tv_read_value = 
# 297 "src/gql_parser.mly"
    ( `Int value )
# 1137 "src/gql_parser.ml"
     in
    _menhir_goto_read_value _menhir_env _menhir_stack _menhir_s _v) : 'freshtv444)

and _menhir_run98 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 8 "src/gql_parser.mly"
       (float)
# 1144 "src/gql_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv441) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((value : (
# 8 "src/gql_parser.mly"
       (float)
# 1154 "src/gql_parser.ml"
    )) : (
# 8 "src/gql_parser.mly"
       (float)
# 1158 "src/gql_parser.ml"
    )) = _v in
    ((let _v : 'tv_read_value = 
# 299 "src/gql_parser.mly"
    ( `Float value )
# 1163 "src/gql_parser.ml"
     in
    _menhir_goto_read_value _menhir_env _menhir_stack _menhir_s _v) : 'freshtv442)

and _menhir_run99 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv439) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_read_value = 
# 303 "src/gql_parser.mly"
    ( `Bool false )
# 1177 "src/gql_parser.ml"
     in
    _menhir_goto_read_value _menhir_env _menhir_stack _menhir_s _v) : 'freshtv440)

and _menhir_run102 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 9 "src/gql_parser.mly"
       (string)
# 1184 "src/gql_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv437) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((value : (
# 9 "src/gql_parser.mly"
       (string)
# 1194 "src/gql_parser.ml"
    )) : (
# 9 "src/gql_parser.mly"
       (string)
# 1198 "src/gql_parser.ml"
    )) = _v in
    ((let _v : 'tv_read_value = 
# 295 "src/gql_parser.mly"
    ( `String value )
# 1203 "src/gql_parser.ml"
     in
    _menhir_goto_read_value _menhir_env _menhir_stack _menhir_s _v) : 'freshtv438)

and _menhir_goto_option_read_arguments_ : _menhir_env -> 'ttv_tail -> 'tv_option_read_arguments_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv435 * _menhir_state) * _menhir_state * 'tv_read_name) = Obj.magic _menhir_stack in
    let (_v : 'tv_option_read_arguments_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv433 * _menhir_state) * _menhir_state * 'tv_read_name) = Obj.magic _menhir_stack in
    let ((arguments : 'tv_option_read_arguments_) : 'tv_option_read_arguments_) = _v in
    ((let ((_menhir_stack, _menhir_s), _, (name : 'tv_read_name)) = _menhir_stack in
    let _1 = () in
    let _v : 'tv_read_directive = 
# 229 "src/gql_parser.mly"
    (
      {
        name;
        arguments;
      }
    )
# 1225 "src/gql_parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv431) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_read_directive) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv429 * _menhir_state * 'tv_read_directive) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AT ->
        _menhir_run129 _menhir_env (Obj.magic _menhir_stack) MenhirState141
    | LEFT_BRACE ->
        _menhir_reduce5 _menhir_env (Obj.magic _menhir_stack) MenhirState141
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState141) : 'freshtv430)) : 'freshtv432)) : 'freshtv434)) : 'freshtv436)

and _menhir_reduce1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_read_argument_ = 
# 211 "/nix/store/ll05yw650dpkid4q7n30xn317g16izq7-menhir-20181113/share/menhir/standard.mly"
    ( [] )
# 1251 "src/gql_parser.ml"
     in
    _menhir_goto_list_read_argument_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_read_directive_ = 
# 211 "/nix/store/ll05yw650dpkid4q7n30xn317g16izq7-menhir-20181113/share/menhir/standard.mly"
    ( [] )
# 1260 "src/gql_parser.ml"
     in
    _menhir_goto_list_read_directive_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run129 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ENUM ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState129
    | EXTEND ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState129
    | FALSE ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState129
    | IMPLEMENTS ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState129
    | INPUT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState129
    | INTERFACE ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState129
    | MUTATION ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState129
    | NAME _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _v
    | NULL ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState129
    | QUERY ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState129
    | SCALAR ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState129
    | SCHEMA ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState129
    | SUBSCRIPTION ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState129
    | TRUE ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState129
    | TYPE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState129
    | UNION ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState129
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState129

and _menhir_goto_read_type_definition : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_read_type_definition -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv427) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_read_type_definition) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv425) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((type_def : 'tv_read_type_definition) : 'tv_read_type_definition) = _v in
    ((let _v : 'tv_read_definitions = 
# 69 "src/gql_parser.mly"
    (
      TypeSystemDefinition(TypeDefinition type_def)
    )
# 1322 "src/gql_parser.ml"
     in
    _menhir_goto_read_definitions _menhir_env _menhir_stack _menhir_s _v) : 'freshtv426)) : 'freshtv428)

and _menhir_goto_read_type : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_read_type -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState72 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv405 * _menhir_state) * _menhir_state * 'tv_read_type) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BANG ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack)
        | RIGHT_BRACK ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv401 * _menhir_state) * _menhir_state * 'tv_read_type) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv399 * _menhir_state) * _menhir_state * 'tv_read_type) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (t : 'tv_read_type)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_read_type = 
# 369 "src/gql_parser.mly"
    (
      ListType t
    )
# 1352 "src/gql_parser.ml"
             in
            _menhir_goto_read_type _menhir_env _menhir_stack _menhir_s _v) : 'freshtv400)) : 'freshtv402)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv403 * _menhir_state) * _menhir_state * 'tv_read_type) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv404)) : 'freshtv406)
    | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv413 * _menhir_state * 'tv_read_description) * _menhir_state * 'tv_read_name)) * _menhir_state * 'tv_read_type) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BANG ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv407) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BLOCK_STRING _v ->
                _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
            | ENUM ->
                _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | EXTEND ->
                _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | FALSE ->
                _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | FLOAT _v ->
                _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
            | IMPLEMENTS ->
                _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | INPUT ->
                _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | INT _v ->
                _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
            | INTERFACE ->
                _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | LEFT_BRACE ->
                _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | LEFT_BRACK ->
                _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | MUTATION ->
                _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | NAME _v ->
                _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
            | NULL ->
                _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | QUERY ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | SCALAR ->
                _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | SCHEMA ->
                _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | STRING _v ->
                _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
            | SUBSCRIPTION ->
                _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | TRUE ->
                _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | TYPE ->
                _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | UNION ->
                _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState78) : 'freshtv408)
        | BLOCK_STRING _ | ENUM | EXTEND | FALSE | IMPLEMENTS | INPUT | INTERFACE | MUTATION | NAME _ | NULL | QUERY | RIGHT_BRACE | RIGHT_PAREN | SCALAR | SCHEMA | STRING _ | SUBSCRIPTION | TRUE | TYPE | UNION ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv409) = Obj.magic _menhir_stack in
            ((let _v : 'tv_option_read_default_value_ = 
# 114 "/nix/store/ll05yw650dpkid4q7n30xn317g16izq7-menhir-20181113/share/menhir/standard.mly"
    ( None )
# 1430 "src/gql_parser.ml"
             in
            _menhir_goto_option_read_default_value_ _menhir_env _menhir_stack _v) : 'freshtv410)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv411 * _menhir_state * 'tv_read_description) * _menhir_state * 'tv_read_name)) * _menhir_state * 'tv_read_type) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv412)) : 'freshtv414)
    | MenhirState120 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv423 * _menhir_state * 'tv_read_description) * _menhir_state * 'tv_read_name) * 'tv_read_arguments_definition)) * _menhir_state * 'tv_read_type) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BANG ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack)
        | BLOCK_STRING _ | ENUM | EXTEND | FALSE | IMPLEMENTS | INPUT | INTERFACE | MUTATION | NAME _ | NULL | QUERY | RIGHT_BRACE | SCALAR | SCHEMA | STRING _ | SUBSCRIPTION | TRUE | TYPE | UNION ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv419 * _menhir_state * 'tv_read_description) * _menhir_state * 'tv_read_name) * 'tv_read_arguments_definition)) * _menhir_state * 'tv_read_type) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s, (description : 'tv_read_description)), _, (name : 'tv_read_name)), (arguments : 'tv_read_arguments_definition)), _, (typ : 'tv_read_type)) = _menhir_stack in
            let _4 = () in
            let _v : 'tv_read_field_definition = 
# 215 "src/gql_parser.mly"
    (
      {
        description;
        arguments;
        name;
        typ;
      }
    )
# 1463 "src/gql_parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv417) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_read_field_definition) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv415 * _menhir_state * 'tv_read_field_definition) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BLOCK_STRING _v ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | STRING _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | ENUM | EXTEND | FALSE | IMPLEMENTS | INPUT | INTERFACE | MUTATION | NAME _ | NULL | QUERY | SCALAR | SCHEMA | SUBSCRIPTION | TRUE | TYPE | UNION ->
                _menhir_reduce40 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | RIGHT_BRACE ->
                _menhir_reduce9 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState64) : 'freshtv416)) : 'freshtv418)) : 'freshtv420)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv421 * _menhir_state * 'tv_read_description) * _menhir_state * 'tv_read_name) * 'tv_read_arguments_definition)) * _menhir_state * 'tv_read_type) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv422)) : 'freshtv424)
    | _ ->
        _menhir_fail ()

and _menhir_run72 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ENUM ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | EXTEND ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | FALSE ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | IMPLEMENTS ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | INPUT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | INTERFACE ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | LEFT_BRACK ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | MUTATION ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | NAME _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | NULL ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | QUERY ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | SCALAR ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | SCHEMA ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | SUBSCRIPTION ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | TRUE ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | TYPE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | UNION ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState72

and _menhir_goto_read_arguments_definition : _menhir_env -> 'ttv_tail -> 'tv_read_arguments_definition -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv397 * _menhir_state * 'tv_read_description) * _menhir_state * 'tv_read_name) * 'tv_read_arguments_definition) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv393 * _menhir_state * 'tv_read_description) * _menhir_state * 'tv_read_name) * 'tv_read_arguments_definition) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ENUM ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | EXTEND ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | FALSE ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | IMPLEMENTS ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | INPUT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | INTERFACE ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | LEFT_BRACK ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | MUTATION ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | NAME _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _v
        | NULL ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | QUERY ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | SCALAR ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | SCHEMA ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | SUBSCRIPTION ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | TRUE ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | TYPE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | UNION ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState120) : 'freshtv394)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv395 * _menhir_state * 'tv_read_description) * _menhir_state * 'tv_read_name) * 'tv_read_arguments_definition) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv396)) : 'freshtv398)

and _menhir_reduce11 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_read_input_value_ = 
# 211 "/nix/store/ll05yw650dpkid4q7n30xn317g16izq7-menhir-20181113/share/menhir/standard.mly"
    ( [] )
# 1607 "src/gql_parser.ml"
     in
    _menhir_goto_list_read_input_value_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce17 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_read_rest_interfaces_ = 
# 211 "/nix/store/ll05yw650dpkid4q7n30xn317g16izq7-menhir-20181113/share/menhir/standard.mly"
    ( [] )
# 1616 "src/gql_parser.ml"
     in
    _menhir_goto_list_read_rest_interfaces_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run57 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ENUM ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | EXTEND ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | FALSE ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | IMPLEMENTS ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | INPUT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | INTERFACE ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | MUTATION ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | NAME _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | NULL ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | QUERY ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | SCALAR ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | SCHEMA ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | SUBSCRIPTION ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | TRUE ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | TYPE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | UNION ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState57

and _menhir_goto_read_interfaces : _menhir_env -> 'ttv_tail -> 'tv_read_interfaces -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((('freshtv391 * _menhir_state * 'tv_read_description)) * _menhir_state * 'tv_read_name) * 'tv_read_interfaces) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LEFT_BRACE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv387 * _menhir_state * 'tv_read_description)) * _menhir_state * 'tv_read_name) * 'tv_read_interfaces) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BLOCK_STRING _v ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
        | STRING _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
        | ENUM | EXTEND | FALSE | IMPLEMENTS | INPUT | INTERFACE | MUTATION | NAME _ | NULL | QUERY | SCALAR | SCHEMA | SUBSCRIPTION | TRUE | TYPE | UNION ->
            _menhir_reduce40 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | RIGHT_BRACE ->
            _menhir_reduce9 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState63) : 'freshtv388)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv389 * _menhir_state * 'tv_read_description)) * _menhir_state * 'tv_read_name) * 'tv_read_interfaces) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv390)) : 'freshtv392)

and _menhir_goto_option_AMP_ : _menhir_env -> 'ttv_tail -> 'tv_option_AMP_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv385) * 'tv_option_AMP_) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ENUM ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | EXTEND ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | FALSE ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | IMPLEMENTS ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | INPUT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | INTERFACE ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | MUTATION ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | NAME _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | NULL ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | QUERY ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | SCALAR ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | SCHEMA ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | SUBSCRIPTION ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | TRUE ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | TYPE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | UNION ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55) : 'freshtv386)

and _menhir_goto_nonempty_list_read_union_member_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_nonempty_list_read_union_member_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv379 * _menhir_state * 'tv_read_union_member) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_nonempty_list_read_union_member_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv377 * _menhir_state * 'tv_read_union_member) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_nonempty_list_read_union_member_) : 'tv_nonempty_list_read_union_member_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_read_union_member)) = _menhir_stack in
        let _v : 'tv_nonempty_list_read_union_member_ = 
# 223 "/nix/store/ll05yw650dpkid4q7n30xn317g16izq7-menhir-20181113/share/menhir/standard.mly"
    ( x :: xs )
# 1758 "src/gql_parser.ml"
         in
        _menhir_goto_nonempty_list_read_union_member_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv378)) : 'freshtv380)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv383 * _menhir_state * 'tv_read_description)) * _menhir_state * 'tv_read_name)) * 'tv_option_PIPE_) * _menhir_state * 'tv_read_name) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_nonempty_list_read_union_member_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv381 * _menhir_state * 'tv_read_description)) * _menhir_state * 'tv_read_name)) * 'tv_option_PIPE_) * _menhir_state * 'tv_read_name) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((ts : 'tv_nonempty_list_read_union_member_) : 'tv_nonempty_list_read_union_member_) = _v in
        ((let ((((_menhir_stack, _menhir_s, (description : 'tv_read_description)), _, (name : 'tv_read_name)), (_5 : 'tv_option_PIPE_)), _, (t : 'tv_read_name)) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _v : 'tv_read_type_definition = 
# 169 "src/gql_parser.mly"
    (
      UnionTypeDefinition {
        description;
        name;
        members = t :: ts;
      }
    )
# 1782 "src/gql_parser.ml"
         in
        _menhir_goto_read_type_definition _menhir_env _menhir_stack _menhir_s _v) : 'freshtv382)) : 'freshtv384)
    | _ ->
        _menhir_fail ()

and _menhir_run46 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ENUM ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | EXTEND ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | FALSE ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | IMPLEMENTS ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | INPUT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | INTERFACE ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | MUTATION ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | NAME _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
    | NULL ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | QUERY ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | SCALAR ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | SCHEMA ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | SUBSCRIPTION ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | TRUE ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | TYPE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | UNION ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState46

and _menhir_goto_option_PIPE_ : _menhir_env -> 'ttv_tail -> 'tv_option_PIPE_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (((('freshtv375 * _menhir_state * 'tv_read_description)) * _menhir_state * 'tv_read_name)) * 'tv_option_PIPE_) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ENUM ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | EXTEND ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | FALSE ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | IMPLEMENTS ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | INPUT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | INTERFACE ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | MUTATION ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | NAME _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | NULL ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | QUERY ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | SCALAR ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | SCHEMA ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | SUBSCRIPTION ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | TRUE ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | TYPE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | UNION ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44) : 'freshtv376)

and _menhir_goto_read_operation_type_definition : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_read_operation_type_definition -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv373 * _menhir_state * 'tv_read_operation_type_definition) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | MUTATION ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | QUERY ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | SUBSCRIPTION ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | RIGHT_BRACE ->
        _menhir_reduce15 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState29) : 'freshtv374)

and _menhir_goto_read_definitions : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_read_definitions -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv371 * _menhir_state * 'tv_read_definitions) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BLOCK_STRING _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState161 _v
    | EXTEND ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState161
    | SCHEMA ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState161
    | STRING _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState161 _v
    | ENUM | INPUT | INTERFACE | SCALAR | TYPE | UNION ->
        _menhir_reduce40 _menhir_env (Obj.magic _menhir_stack) MenhirState161
    | EOF ->
        _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack) MenhirState161
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState161) : 'freshtv372)

and _menhir_goto_read_enum_value : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_read_enum_value -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState133 | MenhirState78 | MenhirState90 | MenhirState109 | MenhirState93 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv361) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_read_enum_value) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv359) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((value : 'tv_read_enum_value) : 'tv_read_enum_value) = _v in
        ((let _v : 'tv_read_value = 
# 307 "src/gql_parser.mly"
    ( `Enum value )
# 1937 "src/gql_parser.ml"
         in
        _menhir_goto_read_value _menhir_env _menhir_stack _menhir_s _v) : 'freshtv360)) : 'freshtv362)
    | MenhirState156 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv369 * _menhir_state * 'tv_read_description) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_read_enum_value) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv367 * _menhir_state * 'tv_read_description) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((value : 'tv_read_enum_value) : 'tv_read_enum_value) = _v in
        ((let (_menhir_stack, _menhir_s, (description : 'tv_read_description)) = _menhir_stack in
        let _v : 'tv_read_enum_value_definition = 
# 324 "src/gql_parser.mly"
    (
      {
        description;
        value;
      }
    )
# 1958 "src/gql_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv365) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_read_enum_value_definition) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv363 * _menhir_state * 'tv_read_enum_value_definition) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BLOCK_STRING _v ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState155 _v
        | STRING _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState155 _v
        | ENUM | EXTEND | IMPLEMENTS | INPUT | INTERFACE | MUTATION | NAME _ | QUERY | SCALAR | SCHEMA | SUBSCRIPTION | TYPE | UNION ->
            _menhir_reduce40 _menhir_env (Obj.magic _menhir_stack) MenhirState155
        | RIGHT_BRACE ->
            _menhir_reduce7 _menhir_env (Obj.magic _menhir_stack) MenhirState155
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState155) : 'freshtv364)) : 'freshtv366)) : 'freshtv368)) : 'freshtv370)
    | _ ->
        _menhir_fail ()

and _menhir_goto_read_name : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_read_name -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv247 * _menhir_state)) * _menhir_state * 'tv_read_name) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv245 * _menhir_state)) * _menhir_state * 'tv_read_name) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (name : 'tv_read_name)) = _menhir_stack in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_read_operation_type_definition = 
# 105 "src/gql_parser.mly"
    (
      Subscription name
    )
# 2002 "src/gql_parser.ml"
         in
        _menhir_goto_read_operation_type_definition _menhir_env _menhir_stack _menhir_s _v) : 'freshtv246)) : 'freshtv248)
    | MenhirState24 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv251 * _menhir_state)) * _menhir_state * 'tv_read_name) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv249 * _menhir_state)) * _menhir_state * 'tv_read_name) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (name : 'tv_read_name)) = _menhir_stack in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_read_operation_type_definition = 
# 97 "src/gql_parser.mly"
    (
      Query name
    )
# 2018 "src/gql_parser.ml"
         in
        _menhir_goto_read_operation_type_definition _menhir_env _menhir_stack _menhir_s _v) : 'freshtv250)) : 'freshtv252)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv255 * _menhir_state)) * _menhir_state * 'tv_read_name) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv253 * _menhir_state)) * _menhir_state * 'tv_read_name) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (name : 'tv_read_name)) = _menhir_stack in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_read_operation_type_definition = 
# 101 "src/gql_parser.mly"
    (
      Mutation name
    )
# 2034 "src/gql_parser.ml"
         in
        _menhir_goto_read_operation_type_definition _menhir_env _menhir_stack _menhir_s _v) : 'freshtv254)) : 'freshtv256)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv269 * _menhir_state * 'tv_read_description)) * _menhir_state * 'tv_read_name) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQUALS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv265 * _menhir_state * 'tv_read_description)) * _menhir_state * 'tv_read_name) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | PIPE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv259) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv257) = Obj.magic _menhir_stack in
                ((let x = () in
                let _v : 'tv_option_PIPE_ = 
# 116 "/nix/store/ll05yw650dpkid4q7n30xn317g16izq7-menhir-20181113/share/menhir/standard.mly"
    ( Some x )
# 2059 "src/gql_parser.ml"
                 in
                _menhir_goto_option_PIPE_ _menhir_env _menhir_stack _v) : 'freshtv258)) : 'freshtv260)
            | ENUM | EXTEND | FALSE | IMPLEMENTS | INPUT | INTERFACE | MUTATION | NAME _ | NULL | QUERY | SCALAR | SCHEMA | SUBSCRIPTION | TRUE | TYPE | UNION ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv261) = Obj.magic _menhir_stack in
                ((let _v : 'tv_option_PIPE_ = 
# 114 "/nix/store/ll05yw650dpkid4q7n30xn317g16izq7-menhir-20181113/share/menhir/standard.mly"
    ( None )
# 2068 "src/gql_parser.ml"
                 in
                _menhir_goto_option_PIPE_ _menhir_env _menhir_stack _v) : 'freshtv262)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv263 * _menhir_state * 'tv_read_description)) * _menhir_state * 'tv_read_name)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv264)) : 'freshtv266)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv267 * _menhir_state * 'tv_read_description)) * _menhir_state * 'tv_read_name) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv268)) : 'freshtv270)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv271 * _menhir_state * 'tv_read_description)) * _menhir_state * 'tv_read_name)) * 'tv_option_PIPE_) * _menhir_state * 'tv_read_name) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PIPE ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45) : 'freshtv272)
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv281 * _menhir_state) * _menhir_state * 'tv_read_name) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv279 * _menhir_state) * _menhir_state * 'tv_read_name) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (t : 'tv_read_name)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_read_union_member = 
# 350 "src/gql_parser.mly"
                  (
      t
    )
# 2109 "src/gql_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv277) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_read_union_member) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv275 * _menhir_state * 'tv_read_union_member) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PIPE ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | BLOCK_STRING _ | ENUM | EOF | EXTEND | INPUT | INTERFACE | SCALAR | SCHEMA | STRING _ | TYPE | UNION ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv273 * _menhir_state * 'tv_read_union_member) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_read_union_member)) = _menhir_stack in
            let _v : 'tv_nonempty_list_read_union_member_ = 
# 221 "/nix/store/ll05yw650dpkid4q7n30xn317g16izq7-menhir-20181113/share/menhir/standard.mly"
    ( [ x ] )
# 2130 "src/gql_parser.ml"
             in
            _menhir_goto_nonempty_list_read_union_member_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv274)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState48) : 'freshtv276)) : 'freshtv278)) : 'freshtv280)) : 'freshtv282)
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv297 * _menhir_state * 'tv_read_description)) * _menhir_state * 'tv_read_name) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IMPLEMENTS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv291) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AMP ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv285) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv283) = Obj.magic _menhir_stack in
                ((let x = () in
                let _v : 'tv_option_AMP_ = 
# 116 "/nix/store/ll05yw650dpkid4q7n30xn317g16izq7-menhir-20181113/share/menhir/standard.mly"
    ( Some x )
# 2159 "src/gql_parser.ml"
                 in
                _menhir_goto_option_AMP_ _menhir_env _menhir_stack _v) : 'freshtv284)) : 'freshtv286)
            | ENUM | EXTEND | FALSE | IMPLEMENTS | INPUT | INTERFACE | MUTATION | NAME _ | NULL | QUERY | SCALAR | SCHEMA | SUBSCRIPTION | TRUE | TYPE | UNION ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv287) = Obj.magic _menhir_stack in
                ((let _v : 'tv_option_AMP_ = 
# 114 "/nix/store/ll05yw650dpkid4q7n30xn317g16izq7-menhir-20181113/share/menhir/standard.mly"
    ( None )
# 2168 "src/gql_parser.ml"
                 in
                _menhir_goto_option_AMP_ _menhir_env _menhir_stack _v) : 'freshtv288)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv289) = Obj.magic _menhir_stack in
                (raise _eRR : 'freshtv290)) : 'freshtv292)
        | LEFT_BRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv293) = Obj.magic _menhir_stack in
            ((let _v : 'tv_read_interfaces = 
# 192 "src/gql_parser.mly"
    ( None )
# 2183 "src/gql_parser.ml"
             in
            _menhir_goto_read_interfaces _menhir_env _menhir_stack _v) : 'freshtv294)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv295 * _menhir_state * 'tv_read_description)) * _menhir_state * 'tv_read_name) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv296)) : 'freshtv298)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv299) * 'tv_option_AMP_) * _menhir_state * 'tv_read_name) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AMP ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | LEFT_BRACE ->
            _menhir_reduce17 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState56) : 'freshtv300)
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv307 * _menhir_state) * _menhir_state * 'tv_read_name) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv305 * _menhir_state) * _menhir_state * 'tv_read_name) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (t : 'tv_read_name)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_read_rest_interfaces = 
# 205 "src/gql_parser.mly"
    (
      t
    )
# 2219 "src/gql_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv303) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_read_rest_interfaces) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv301 * _menhir_state * 'tv_read_rest_interfaces) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AMP ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | LEFT_BRACE ->
            _menhir_reduce17 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState59) : 'freshtv302)) : 'freshtv304)) : 'freshtv306)) : 'freshtv308)
    | MenhirState65 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv315 * _menhir_state * 'tv_read_description) * _menhir_state * 'tv_read_name) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFT_PAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv309) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BLOCK_STRING _v ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
            | STRING _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
            | ENUM | EXTEND | FALSE | IMPLEMENTS | INPUT | INTERFACE | MUTATION | NAME _ | NULL | QUERY | SCALAR | SCHEMA | SUBSCRIPTION | TRUE | TYPE | UNION ->
                _menhir_reduce40 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | RIGHT_PAREN ->
                _menhir_reduce11 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState67) : 'freshtv310)
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv311) = Obj.magic _menhir_stack in
            ((let _v : 'tv_read_arguments_definition = 
# 259 "src/gql_parser.mly"
    ( None )
# 2269 "src/gql_parser.ml"
             in
            _menhir_goto_read_arguments_definition _menhir_env _menhir_stack _v) : 'freshtv312)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv313 * _menhir_state * 'tv_read_description) * _menhir_state * 'tv_read_name) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv314)) : 'freshtv316)
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv321 * _menhir_state * 'tv_read_description) * _menhir_state * 'tv_read_name) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv317 * _menhir_state * 'tv_read_description) * _menhir_state * 'tv_read_name) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ENUM ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | EXTEND ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | FALSE ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | IMPLEMENTS ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | INPUT ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | INTERFACE ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | LEFT_BRACK ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | MUTATION ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | NAME _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
            | NULL ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | QUERY ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | SCALAR ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | SCHEMA ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | SUBSCRIPTION ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | TRUE ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | TYPE ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | UNION ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState71) : 'freshtv318)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv319 * _menhir_state * 'tv_read_description) * _menhir_state * 'tv_read_name) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv320)) : 'freshtv322)
    | MenhirState120 | MenhirState71 | MenhirState72 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv325 * _menhir_state * 'tv_read_name) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv323 * _menhir_state * 'tv_read_name) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (name : 'tv_read_name)) = _menhir_stack in
        let _v : 'tv_read_type = 
# 363 "src/gql_parser.mly"
    (
      NamedType name
    )
# 2347 "src/gql_parser.ml"
         in
        _menhir_goto_read_type _menhir_env _menhir_stack _menhir_s _v) : 'freshtv324)) : 'freshtv326)
    | MenhirState125 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv329 * _menhir_state * 'tv_read_description)) * _menhir_state * 'tv_read_name) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv327 * _menhir_state * 'tv_read_description)) * _menhir_state * 'tv_read_name) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (description : 'tv_read_description)), _, (name : 'tv_read_name)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_read_type_definition = 
# 113 "src/gql_parser.mly"
    (
      ScalarTypeDefinition {
        description;
        name;
      }
    )
# 2365 "src/gql_parser.ml"
         in
        _menhir_goto_read_type_definition _menhir_env _menhir_stack _menhir_s _v) : 'freshtv328)) : 'freshtv330)
    | MenhirState127 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv331 * _menhir_state * 'tv_read_description)) * _menhir_state * 'tv_read_name) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AT ->
            _menhir_run129 _menhir_env (Obj.magic _menhir_stack) MenhirState128
        | LEFT_BRACE ->
            _menhir_reduce5 _menhir_env (Obj.magic _menhir_stack) MenhirState128
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState128) : 'freshtv332)
    | MenhirState129 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv339 * _menhir_state) * _menhir_state * 'tv_read_name) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFT_PAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv333) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ENUM ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | EXTEND ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | FALSE ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | IMPLEMENTS ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | INPUT ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | INTERFACE ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | MUTATION ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | NAME _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
            | NULL ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | QUERY ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | SCALAR ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | SCHEMA ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | SUBSCRIPTION ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | TRUE ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | TYPE ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | UNION ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | RIGHT_PAREN ->
                _menhir_reduce1 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState131) : 'freshtv334)
        | AT | LEFT_BRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv335) = Obj.magic _menhir_stack in
            ((let _v : 'tv_option_read_arguments_ = 
# 114 "/nix/store/ll05yw650dpkid4q7n30xn317g16izq7-menhir-20181113/share/menhir/standard.mly"
    ( None )
# 2438 "src/gql_parser.ml"
             in
            _menhir_goto_option_read_arguments_ _menhir_env _menhir_stack _v) : 'freshtv336)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv337 * _menhir_state) * _menhir_state * 'tv_read_name) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv338)) : 'freshtv340)
    | MenhirState135 | MenhirState131 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv345 * _menhir_state * 'tv_read_name) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv341 * _menhir_state * 'tv_read_name) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BLOCK_STRING _v ->
                _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _v
            | ENUM ->
                _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | EXTEND ->
                _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | FALSE ->
                _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | FLOAT _v ->
                _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _v
            | IMPLEMENTS ->
                _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | INPUT ->
                _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | INT _v ->
                _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _v
            | INTERFACE ->
                _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | LEFT_BRACE ->
                _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | LEFT_BRACK ->
                _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | MUTATION ->
                _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | NAME _v ->
                _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _v
            | NULL ->
                _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | QUERY ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | SCALAR ->
                _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | SCHEMA ->
                _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | STRING _v ->
                _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _v
            | SUBSCRIPTION ->
                _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | TRUE ->
                _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | TYPE ->
                _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | UNION ->
                _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState133) : 'freshtv342)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv343 * _menhir_state * 'tv_read_name) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv344)) : 'freshtv346)
    | MenhirState147 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv351 * _menhir_state * 'tv_read_description)) * _menhir_state * 'tv_read_name) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFT_BRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv347 * _menhir_state * 'tv_read_description)) * _menhir_state * 'tv_read_name) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BLOCK_STRING _v ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState149 _v
            | STRING _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState149 _v
            | ENUM | EXTEND | FALSE | IMPLEMENTS | INPUT | INTERFACE | MUTATION | NAME _ | NULL | QUERY | SCALAR | SCHEMA | SUBSCRIPTION | TRUE | TYPE | UNION ->
                _menhir_reduce40 _menhir_env (Obj.magic _menhir_stack) MenhirState149
            | RIGHT_BRACE ->
                _menhir_reduce11 _menhir_env (Obj.magic _menhir_stack) MenhirState149
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState149) : 'freshtv348)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv349 * _menhir_state * 'tv_read_description)) * _menhir_state * 'tv_read_name) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv350)) : 'freshtv352)
    | MenhirState152 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv357 * _menhir_state * 'tv_read_description)) * _menhir_state * 'tv_read_name) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFT_BRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv353 * _menhir_state * 'tv_read_description)) * _menhir_state * 'tv_read_name) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BLOCK_STRING _v ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _v
            | STRING _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _v
            | ENUM | EXTEND | IMPLEMENTS | INPUT | INTERFACE | MUTATION | NAME _ | QUERY | SCALAR | SCHEMA | SUBSCRIPTION | TYPE | UNION ->
                _menhir_reduce40 _menhir_env (Obj.magic _menhir_stack) MenhirState154
            | RIGHT_BRACE ->
                _menhir_reduce7 _menhir_env (Obj.magic _menhir_stack) MenhirState154
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState154) : 'freshtv354)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv355 * _menhir_state * 'tv_read_description)) * _menhir_state * 'tv_read_name) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv356)) : 'freshtv358)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_read_operation_type_definition_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_read_operation_type_definition_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv219 * _menhir_state * 'tv_read_operation_type_definition) * _menhir_state * 'tv_list_read_operation_type_definition_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv217 * _menhir_state * 'tv_read_operation_type_definition) * _menhir_state * 'tv_list_read_operation_type_definition_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_read_operation_type_definition)), _, (xs : 'tv_list_read_operation_type_definition_)) = _menhir_stack in
        let _v : 'tv_list_read_operation_type_definition_ = 
# 213 "/nix/store/ll05yw650dpkid4q7n30xn317g16izq7-menhir-20181113/share/menhir/standard.mly"
    ( x :: xs )
# 2593 "src/gql_parser.ml"
         in
        _menhir_goto_list_read_operation_type_definition_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv218)) : 'freshtv220)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv243 * _menhir_state)) * _menhir_state * 'tv_list_read_operation_type_definition_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RIGHT_BRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv239 * _menhir_state)) * _menhir_state * 'tv_list_read_operation_type_definition_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv237 * _menhir_state)) * _menhir_state * 'tv_list_read_operation_type_definition_) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (operations : 'tv_list_read_operation_type_definition_)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_read_schema_definition = 
# 83 "src/gql_parser.mly"
    (
      operations
    )
# 2617 "src/gql_parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv235) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_read_schema_definition) = _v in
            ((match _menhir_s with
            | MenhirState33 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv229 * _menhir_state) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : 'tv_read_schema_definition) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv227 * _menhir_state) = Obj.magic _menhir_stack in
                let (_ : _menhir_state) = _menhir_s in
                let ((operations : 'tv_read_schema_definition) : 'tv_read_schema_definition) = _v in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                let _1 = () in
                let _v : 'tv_read_schema_extension = 
# 91 "src/gql_parser.mly"
    (
      operations
    )
# 2640 "src/gql_parser.ml"
                 in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv225) = _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : 'tv_read_schema_extension) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv223) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : 'tv_read_schema_extension) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv221) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let ((schema_ext : 'tv_read_schema_extension) : 'tv_read_schema_extension) = _v in
                ((let _v : 'tv_read_definitions = 
# 73 "src/gql_parser.mly"
    (
      TypeSystemExtension(SchemaExtension)
    )
# 2659 "src/gql_parser.ml"
                 in
                _menhir_goto_read_definitions _menhir_env _menhir_stack _menhir_s _v) : 'freshtv222)) : 'freshtv224)) : 'freshtv226)) : 'freshtv228)) : 'freshtv230)
            | MenhirState161 | MenhirState0 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv233) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : 'tv_read_schema_definition) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv231) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let ((schema_def : 'tv_read_schema_definition) : 'tv_read_schema_definition) = _v in
                ((let _v : 'tv_read_definitions = 
# 65 "src/gql_parser.mly"
    (
      TypeSystemDefinition(SchemaDefinition schema_def)
    )
# 2676 "src/gql_parser.ml"
                 in
                _menhir_goto_read_definitions _menhir_env _menhir_stack _menhir_s _v) : 'freshtv232)) : 'freshtv234)
            | _ ->
                _menhir_fail ()) : 'freshtv236)) : 'freshtv238)) : 'freshtv240)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv241 * _menhir_state)) * _menhir_state * 'tv_list_read_operation_type_definition_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv242)) : 'freshtv244)
    | _ ->
        _menhir_fail ()

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_run79 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv215) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_read_enum_value = 
# 337 "src/gql_parser.mly"
                ( "union" )
# 2706 "src/gql_parser.ml"
     in
    _menhir_goto_read_enum_value _menhir_env _menhir_stack _menhir_s _v) : 'freshtv216)

and _menhir_run80 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv213) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_read_enum_value = 
# 335 "src/gql_parser.mly"
                ( "type" )
# 2720 "src/gql_parser.ml"
     in
    _menhir_goto_read_enum_value _menhir_env _menhir_stack _menhir_s _v) : 'freshtv214)

and _menhir_run82 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv211) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_read_enum_value = 
# 345 "src/gql_parser.mly"
                ( "subscription" )
# 2734 "src/gql_parser.ml"
     in
    _menhir_goto_read_enum_value _menhir_env _menhir_stack _menhir_s _v) : 'freshtv212)

and _menhir_run84 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv209) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_read_enum_value = 
# 342 "src/gql_parser.mly"
                ( "schema" )
# 2748 "src/gql_parser.ml"
     in
    _menhir_goto_read_enum_value _menhir_env _menhir_stack _menhir_s _v) : 'freshtv210)

and _menhir_run85 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv207) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_read_enum_value = 
# 334 "src/gql_parser.mly"
                ( "scalar" )
# 2762 "src/gql_parser.ml"
     in
    _menhir_goto_read_enum_value _menhir_env _menhir_stack _menhir_s _v) : 'freshtv208)

and _menhir_run86 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv205) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_read_enum_value = 
# 343 "src/gql_parser.mly"
                ( "query" )
# 2776 "src/gql_parser.ml"
     in
    _menhir_goto_read_enum_value _menhir_env _menhir_stack _menhir_s _v) : 'freshtv206)

and _menhir_run88 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 11 "src/gql_parser.mly"
       (string)
# 2783 "src/gql_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv203) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((v : (
# 11 "src/gql_parser.mly"
       (string)
# 2793 "src/gql_parser.ml"
    )) : (
# 11 "src/gql_parser.mly"
       (string)
# 2797 "src/gql_parser.ml"
    )) = _v in
    ((let _v : 'tv_read_enum_value = 
# 333 "src/gql_parser.mly"
                ( v )
# 2802 "src/gql_parser.ml"
     in
    _menhir_goto_read_enum_value _menhir_env _menhir_stack _menhir_s _v) : 'freshtv204)

and _menhir_run89 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv201) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_read_enum_value = 
# 344 "src/gql_parser.mly"
                ( "mutation" )
# 2816 "src/gql_parser.ml"
     in
    _menhir_goto_read_enum_value _menhir_env _menhir_stack _menhir_s _v) : 'freshtv202)

and _menhir_run94 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv199) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_read_enum_value = 
# 336 "src/gql_parser.mly"
                ( "interface" )
# 2830 "src/gql_parser.ml"
     in
    _menhir_goto_read_enum_value _menhir_env _menhir_stack _menhir_s _v) : 'freshtv200)

and _menhir_run96 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv197) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_read_enum_value = 
# 339 "src/gql_parser.mly"
                ( "input" )
# 2844 "src/gql_parser.ml"
     in
    _menhir_goto_read_enum_value _menhir_env _menhir_stack _menhir_s _v) : 'freshtv198)

and _menhir_run97 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv195) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_read_enum_value = 
# 340 "src/gql_parser.mly"
                ( "implements" )
# 2858 "src/gql_parser.ml"
     in
    _menhir_goto_read_enum_value _menhir_env _menhir_stack _menhir_s _v) : 'freshtv196)

and _menhir_run100 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv193) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_read_enum_value = 
# 341 "src/gql_parser.mly"
                ( "extend" )
# 2872 "src/gql_parser.ml"
     in
    _menhir_goto_read_enum_value _menhir_env _menhir_stack _menhir_s _v) : 'freshtv194)

and _menhir_run101 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv191) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_read_enum_value = 
# 338 "src/gql_parser.mly"
                ( "enum" )
# 2886 "src/gql_parser.ml"
     in
    _menhir_goto_read_enum_value _menhir_env _menhir_stack _menhir_s _v) : 'freshtv192)

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv189) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_read_name = 
# 386 "src/gql_parser.mly"
                ( "union" )
# 2900 "src/gql_parser.ml"
     in
    _menhir_goto_read_name _menhir_env _menhir_stack _menhir_s _v) : 'freshtv190)

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv187) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_read_name = 
# 384 "src/gql_parser.mly"
                ( "type" )
# 2914 "src/gql_parser.ml"
     in
    _menhir_goto_read_name _menhir_env _menhir_stack _menhir_s _v) : 'freshtv188)

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv185) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_read_name = 
# 380 "src/gql_parser.mly"
                ( "true" )
# 2928 "src/gql_parser.ml"
     in
    _menhir_goto_read_name _menhir_env _menhir_stack _menhir_s _v) : 'freshtv186)

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv183) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_read_name = 
# 394 "src/gql_parser.mly"
                ( "subscription" )
# 2942 "src/gql_parser.ml"
     in
    _menhir_goto_read_name _menhir_env _menhir_stack _menhir_s _v) : 'freshtv184)

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv181) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_read_name = 
# 391 "src/gql_parser.mly"
                ( "schema" )
# 2956 "src/gql_parser.ml"
     in
    _menhir_goto_read_name _menhir_env _menhir_stack _menhir_s _v) : 'freshtv182)

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv179) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_read_name = 
# 383 "src/gql_parser.mly"
                ( "scalar" )
# 2970 "src/gql_parser.ml"
     in
    _menhir_goto_read_name _menhir_env _menhir_stack _menhir_s _v) : 'freshtv180)

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv177) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_read_name = 
# 392 "src/gql_parser.mly"
                ( "query" )
# 2984 "src/gql_parser.ml"
     in
    _menhir_goto_read_name _menhir_env _menhir_stack _menhir_s _v) : 'freshtv178)

and _menhir_run13 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv175) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_read_name = 
# 382 "src/gql_parser.mly"
                ( "null" )
# 2998 "src/gql_parser.ml"
     in
    _menhir_goto_read_name _menhir_env _menhir_stack _menhir_s _v) : 'freshtv176)

and _menhir_run14 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 11 "src/gql_parser.mly"
       (string)
# 3005 "src/gql_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv173) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((v : (
# 11 "src/gql_parser.mly"
       (string)
# 3015 "src/gql_parser.ml"
    )) : (
# 11 "src/gql_parser.mly"
       (string)
# 3019 "src/gql_parser.ml"
    )) = _v in
    ((let _v : 'tv_read_name = 
# 379 "src/gql_parser.mly"
                ( v )
# 3024 "src/gql_parser.ml"
     in
    _menhir_goto_read_name _menhir_env _menhir_stack _menhir_s _v) : 'freshtv174)

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv171) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_read_name = 
# 393 "src/gql_parser.mly"
                ( "mutation" )
# 3038 "src/gql_parser.ml"
     in
    _menhir_goto_read_name _menhir_env _menhir_stack _menhir_s _v) : 'freshtv172)

and _menhir_run16 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv169) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_read_name = 
# 385 "src/gql_parser.mly"
                ( "interface" )
# 3052 "src/gql_parser.ml"
     in
    _menhir_goto_read_name _menhir_env _menhir_stack _menhir_s _v) : 'freshtv170)

and _menhir_run17 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv167) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_read_name = 
# 388 "src/gql_parser.mly"
                ( "input" )
# 3066 "src/gql_parser.ml"
     in
    _menhir_goto_read_name _menhir_env _menhir_stack _menhir_s _v) : 'freshtv168)

and _menhir_run18 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv165) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_read_name = 
# 389 "src/gql_parser.mly"
                ( "implements" )
# 3080 "src/gql_parser.ml"
     in
    _menhir_goto_read_name _menhir_env _menhir_stack _menhir_s _v) : 'freshtv166)

and _menhir_run19 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv163) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_read_name = 
# 381 "src/gql_parser.mly"
                ( "false" )
# 3094 "src/gql_parser.ml"
     in
    _menhir_goto_read_name _menhir_env _menhir_stack _menhir_s _v) : 'freshtv164)

and _menhir_run20 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv161) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_read_name = 
# 390 "src/gql_parser.mly"
                ( "extend" )
# 3108 "src/gql_parser.ml"
     in
    _menhir_goto_read_name _menhir_env _menhir_stack _menhir_s _v) : 'freshtv162)

and _menhir_run21 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv159) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_read_name = 
# 387 "src/gql_parser.mly"
                ( "enum" )
# 3122 "src/gql_parser.ml"
     in
    _menhir_goto_read_name _menhir_env _menhir_stack _menhir_s _v) : 'freshtv160)

and _menhir_goto_list_read_definitions_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_read_definitions_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState161 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv143 * _menhir_state * 'tv_read_definitions) * _menhir_state * 'tv_list_read_definitions_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv141 * _menhir_state * 'tv_read_definitions) * _menhir_state * 'tv_list_read_definitions_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_read_definitions)), _, (xs : 'tv_list_read_definitions_)) = _menhir_stack in
        let _v : 'tv_list_read_definitions_ = 
# 213 "/nix/store/ll05yw650dpkid4q7n30xn317g16izq7-menhir-20181113/share/menhir/standard.mly"
    ( x :: xs )
# 3139 "src/gql_parser.ml"
         in
        _menhir_goto_list_read_definitions_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv142)) : 'freshtv144)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv157 * _menhir_state * 'tv_list_read_definitions_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv153 * _menhir_state * 'tv_list_read_definitions_) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv151 * _menhir_state * 'tv_list_read_definitions_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (def : 'tv_list_read_definitions_)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 55 "src/gql_parser.mly"
       (Gql_ast.document)
# 3158 "src/gql_parser.ml"
            ) = 
# 59 "src/gql_parser.mly"
                                ( def )
# 3162 "src/gql_parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv149) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 55 "src/gql_parser.mly"
       (Gql_ast.document)
# 3170 "src/gql_parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv147) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 55 "src/gql_parser.mly"
       (Gql_ast.document)
# 3178 "src/gql_parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv145) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 55 "src/gql_parser.mly"
       (Gql_ast.document)
# 3186 "src/gql_parser.ml"
            )) : (
# 55 "src/gql_parser.mly"
       (Gql_ast.document)
# 3190 "src/gql_parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv146)) : 'freshtv148)) : 'freshtv150)) : 'freshtv152)) : 'freshtv154)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv155 * _menhir_state * 'tv_list_read_definitions_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv156)) : 'freshtv158)
    | _ ->
        _menhir_fail ()

and _menhir_reduce15 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_read_operation_type_definition_ = 
# 211 "/nix/store/ll05yw650dpkid4q7n30xn317g16izq7-menhir-20181113/share/menhir/standard.mly"
    ( [] )
# 3208 "src/gql_parser.ml"
     in
    _menhir_goto_list_read_operation_type_definition_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv137 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ENUM ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState5
        | EXTEND ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState5
        | FALSE ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState5
        | IMPLEMENTS ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState5
        | INPUT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState5
        | INTERFACE ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState5
        | MUTATION ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState5
        | NAME _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
        | NULL ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState5
        | QUERY ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState5
        | SCALAR ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState5
        | SCHEMA ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState5
        | SUBSCRIPTION ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState5
        | TRUE ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState5
        | TYPE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState5
        | UNION ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState5
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState5) : 'freshtv138)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv139 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)

and _menhir_run23 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv133 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ENUM ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | EXTEND ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | FALSE ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | IMPLEMENTS ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | INPUT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | INTERFACE ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | MUTATION ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | NAME _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
        | NULL ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | QUERY ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | SCALAR ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | SCHEMA ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | SUBSCRIPTION ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | TRUE ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | TYPE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | UNION ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState24) : 'freshtv134)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv135 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv136)

and _menhir_run26 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv129 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ENUM ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | EXTEND ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | FALSE ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | IMPLEMENTS ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | INPUT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | INTERFACE ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | MUTATION ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | NAME _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
        | NULL ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | QUERY ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | SCALAR ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | SCHEMA ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | SUBSCRIPTION ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | TRUE ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | TYPE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | UNION ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState27) : 'freshtv130)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv131 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)

and _menhir_goto_read_description : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_read_description -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState161 | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv121 * _menhir_state * 'tv_read_description) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ENUM ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv107 * _menhir_state * 'tv_read_description) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ENUM ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState152
            | EXTEND ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState152
            | FALSE ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState152
            | IMPLEMENTS ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState152
            | INPUT ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState152
            | INTERFACE ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState152
            | MUTATION ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState152
            | NAME _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState152 _v
            | NULL ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState152
            | QUERY ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState152
            | SCALAR ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState152
            | SCHEMA ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState152
            | SUBSCRIPTION ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState152
            | TRUE ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState152
            | TYPE ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState152
            | UNION ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState152
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState152) : 'freshtv108)
        | INPUT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv109 * _menhir_state * 'tv_read_description) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ENUM ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState147
            | EXTEND ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState147
            | FALSE ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState147
            | IMPLEMENTS ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState147
            | INPUT ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState147
            | INTERFACE ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState147
            | MUTATION ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState147
            | NAME _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState147 _v
            | NULL ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState147
            | QUERY ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState147
            | SCALAR ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState147
            | SCHEMA ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState147
            | SUBSCRIPTION ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState147
            | TRUE ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState147
            | TYPE ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState147
            | UNION ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState147
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState147) : 'freshtv110)
        | INTERFACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv111 * _menhir_state * 'tv_read_description) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ENUM ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | EXTEND ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | FALSE ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | IMPLEMENTS ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | INPUT ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | INTERFACE ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | MUTATION ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | NAME _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
            | NULL ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | QUERY ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | SCALAR ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | SCHEMA ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | SUBSCRIPTION ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | TRUE ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | TYPE ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | UNION ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState127) : 'freshtv112)
        | SCALAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv113 * _menhir_state * 'tv_read_description) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ENUM ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | EXTEND ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | FALSE ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | IMPLEMENTS ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | INPUT ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | INTERFACE ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | MUTATION ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | NAME _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _v
            | NULL ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | QUERY ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | SCALAR ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | SCHEMA ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | SUBSCRIPTION ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | TRUE ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | TYPE ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | UNION ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState125) : 'freshtv114)
        | TYPE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv115 * _menhir_state * 'tv_read_description) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ENUM ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState51
            | EXTEND ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState51
            | FALSE ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState51
            | IMPLEMENTS ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState51
            | INPUT ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState51
            | INTERFACE ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState51
            | MUTATION ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState51
            | NAME _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
            | NULL ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState51
            | QUERY ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState51
            | SCALAR ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState51
            | SCHEMA ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState51
            | SUBSCRIPTION ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState51
            | TRUE ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState51
            | TYPE ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState51
            | UNION ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState51
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState51) : 'freshtv116)
        | UNION ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv117 * _menhir_state * 'tv_read_description) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ENUM ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState40
            | EXTEND ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState40
            | FALSE ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState40
            | IMPLEMENTS ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState40
            | INPUT ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState40
            | INTERFACE ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState40
            | MUTATION ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState40
            | NAME _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
            | NULL ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState40
            | QUERY ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState40
            | SCALAR ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState40
            | SCHEMA ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState40
            | SUBSCRIPTION ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState40
            | TRUE ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState40
            | TYPE ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState40
            | UNION ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState40
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState40) : 'freshtv118)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv119 * _menhir_state * 'tv_read_description) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)) : 'freshtv122)
    | MenhirState144 | MenhirState63 | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv123 * _menhir_state * 'tv_read_description) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ENUM ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | EXTEND ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | FALSE ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | IMPLEMENTS ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | INPUT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | INTERFACE ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | MUTATION ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | NAME _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
        | NULL ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | QUERY ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | SCALAR ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | SCHEMA ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | SUBSCRIPTION ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | TRUE ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | TYPE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | UNION ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState65) : 'freshtv124)
    | MenhirState149 | MenhirState67 | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv125 * _menhir_state * 'tv_read_description) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ENUM ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | EXTEND ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | FALSE ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | IMPLEMENTS ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | INPUT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | INTERFACE ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | MUTATION ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | NAME _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
        | NULL ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | QUERY ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | SCALAR ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | SCHEMA ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | SUBSCRIPTION ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | TRUE ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | TYPE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | UNION ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState69) : 'freshtv126)
    | MenhirState154 | MenhirState155 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv127 * _menhir_state * 'tv_read_description) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ENUM ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState156
        | EXTEND ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState156
        | IMPLEMENTS ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState156
        | INPUT ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState156
        | INTERFACE ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState156
        | MUTATION ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState156
        | NAME _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState156 _v
        | QUERY ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState156
        | SCALAR ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState156
        | SCHEMA ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState156
        | SUBSCRIPTION ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState156
        | TYPE ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState156
        | UNION ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState156
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState156) : 'freshtv128)
    | _ ->
        _menhir_fail ()

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState161 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv11 * _menhir_state * 'tv_read_definitions) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv12)
    | MenhirState156 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv13 * _menhir_state * 'tv_read_description) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv14)
    | MenhirState155 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv15 * _menhir_state * 'tv_read_enum_value_definition) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv16)
    | MenhirState154 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv17 * _menhir_state * 'tv_read_description)) * _menhir_state * 'tv_read_name)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv18)
    | MenhirState152 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv19 * _menhir_state * 'tv_read_description)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv20)
    | MenhirState149 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv21 * _menhir_state * 'tv_read_description)) * _menhir_state * 'tv_read_name)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)
    | MenhirState147 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv23 * _menhir_state * 'tv_read_description)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)
    | MenhirState144 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv25 * _menhir_state * 'tv_read_description)) * _menhir_state * 'tv_read_name) * _menhir_state * 'tv_list_read_directive_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)
    | MenhirState141 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv27 * _menhir_state * 'tv_read_directive) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)
    | MenhirState135 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv29 * _menhir_state * 'tv_read_argument) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)
    | MenhirState133 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv31 * _menhir_state * 'tv_read_name)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)
    | MenhirState131 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv33) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv34)
    | MenhirState129 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv35 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState128 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv37 * _menhir_state * 'tv_read_description)) * _menhir_state * 'tv_read_name) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState127 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv39 * _menhir_state * 'tv_read_description)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)
    | MenhirState125 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv41 * _menhir_state * 'tv_read_description)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
    | MenhirState120 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv43 * _menhir_state * 'tv_read_description) * _menhir_state * 'tv_read_name) * 'tv_read_arguments_definition)) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState109 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv45 * _menhir_state * 'tv_read_value) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState105 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv47 * _menhir_state * 'tv_read_object_field) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState93 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv49 * _menhir_state * (
# 11 "src/gql_parser.mly"
       (string)
# 3874 "src/gql_parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv51 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv53 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv55) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv56)
    | MenhirState72 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv57 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv59 * _menhir_state * 'tv_read_description) * _menhir_state * 'tv_read_name)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv61 * _menhir_state * 'tv_read_description) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv63 * _menhir_state * 'tv_read_input_value) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv65) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv66)
    | MenhirState65 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv67 * _menhir_state * 'tv_read_description) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv69 * _menhir_state * 'tv_read_field_definition) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState63 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv71 * _menhir_state * 'tv_read_description)) * _menhir_state * 'tv_read_name) * 'tv_read_interfaces)) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState59 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv73 * _menhir_state * 'tv_read_rest_interfaces) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv75 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv77) * 'tv_option_AMP_) * _menhir_state * 'tv_read_name) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv79) * 'tv_option_AMP_) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv80)
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv81 * _menhir_state * 'tv_read_description)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv83 * _menhir_state * 'tv_read_union_member) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv85 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv87 * _menhir_state * 'tv_read_description)) * _menhir_state * 'tv_read_name)) * 'tv_option_PIPE_) * _menhir_state * 'tv_read_name) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv89 * _menhir_state * 'tv_read_description)) * _menhir_state * 'tv_read_name)) * 'tv_option_PIPE_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv91 * _menhir_state * 'tv_read_description)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv93 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv95 * _menhir_state * 'tv_read_operation_type_definition) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv97 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)
    | MenhirState24 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv99 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv101 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv103 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv105) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv106)

and _menhir_reduce3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_read_definitions_ = 
# 211 "/nix/store/ll05yw650dpkid4q7n30xn317g16izq7-menhir-20181113/share/menhir/standard.mly"
    ( [] )
# 4020 "src/gql_parser.ml"
     in
    _menhir_goto_list_read_definitions_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce40 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_read_description = 
# 356 "src/gql_parser.mly"
    ( None )
# 4029 "src/gql_parser.ml"
     in
    _menhir_goto_read_description _menhir_env _menhir_stack _menhir_s _v

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "src/gql_parser.mly"
       (string)
# 4036 "src/gql_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv9) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((str : (
# 10 "src/gql_parser.mly"
       (string)
# 4046 "src/gql_parser.ml"
    )) : (
# 10 "src/gql_parser.mly"
       (string)
# 4050 "src/gql_parser.ml"
    )) = _v in
    ((let _v : 'tv_read_description = 
# 357 "src/gql_parser.mly"
                 ( Some str )
# 4055 "src/gql_parser.ml"
     in
    _menhir_goto_read_description _menhir_env _menhir_stack _menhir_s _v) : 'freshtv10)

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LEFT_BRACE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv5 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MUTATION ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState3
        | QUERY ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState3
        | SUBSCRIPTION ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState3
        | RIGHT_BRACE ->
            _menhir_reduce15 _menhir_env (Obj.magic _menhir_stack) MenhirState3
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState3) : 'freshtv6)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv7 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv8)

and _menhir_run33 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | SCHEMA ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33

and _menhir_run35 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 9 "src/gql_parser.mly"
       (string)
# 4107 "src/gql_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((str : (
# 9 "src/gql_parser.mly"
       (string)
# 4117 "src/gql_parser.ml"
    )) : (
# 9 "src/gql_parser.mly"
       (string)
# 4121 "src/gql_parser.ml"
    )) = _v in
    ((let _v : 'tv_read_description = 
# 358 "src/gql_parser.mly"
                       ( Some str )
# 4126 "src/gql_parser.ml"
     in
    _menhir_goto_read_description _menhir_env _menhir_stack _menhir_s _v) : 'freshtv4)

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and prog : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 55 "src/gql_parser.mly"
       (Gql_ast.document)
# 4145 "src/gql_parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env =
      let (lexer : Lexing.lexbuf -> token) = lexer in
      let (lexbuf : Lexing.lexbuf) = lexbuf in
      ((let _tok = Obj.magic () in
      {
        _menhir_lexer = lexer;
        _menhir_lexbuf = lexbuf;
        _menhir_token = _tok;
        _menhir_error = false;
      }) : _menhir_env)
    in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BLOCK_STRING _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | EXTEND ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | SCHEMA ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | STRING _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | ENUM | INPUT | INTERFACE | SCALAR | TYPE | UNION ->
        _menhir_reduce40 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | EOF ->
        _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv2))

# 269 "/nix/store/ll05yw650dpkid4q7n30xn317g16izq7-menhir-20181113/share/menhir/standard.mly"
  

# 4184 "src/gql_parser.ml"
