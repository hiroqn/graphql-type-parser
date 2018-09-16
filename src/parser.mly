(**
 * Name: Parser
 *
 * The input for Menhir. Contains the grammar for GraphQL
 *)

%token <int> INT
%token <float> FLOAT
%token <string> BLOCK_STRING
%token <string> STRING
%token <string> NAME

%token BANG
%token DOLLAR
%token AMP
%token LEFT_PAREN
%token RIGHT_PAREN
%token SPREAD
%token COLON
%token EQUALS
%token AT
%token LEFT_BRACK
%token RIGHT_BRACK
%token LEFT_BRACE
%token PIPE
%token RIGHT_BRACE

%token NULL
%token TRUE
%token FALSE

%token TYPE
%token INTERFACE
%token IMPLEMENTS
%token EXTEND
%token SCALAR
%token UNION
%token ENUM
%token INPUT

%token SCHEMA
%token QUERY
%token MUTATION
%token SUBSCRIPTION

%token EOF

(* Opening the Types so that the grammars understand the GraphQL types *)
%{
  open Types
%}

%start <Types.document> prog
%%

prog:
  | def = read_definitions* EOF { def }
  ;

read_definitions:
  | schema_def = read_schema_definition
    {
      SchemaDefinition schema_def
    }
  | type_def = read_type_definition
    {
      TypeDefinition type_def
    }
  | schema_ext = read_schema_extension
    {
      SchemaExtension schema_ext
    }
  ;

read_schema_definition:
  | SCHEMA
    LEFT_BRACE
    operations = read_operation_type_definition*
    RIGHT_BRACE
    {
      operations
    }
  ;

read_schema_extension:
  | EXTEND
    operations = read_schema_definition
    {
      operations
    }

read_operation_type_definition:
  | QUERY COLON name = read_name
    {
      Query name
    }
  | MUTATION COLON name = read_name
    {
      Mutation name
    }
  | SUBSCRIPTION COLON name = read_name
    {
      Subscription name
    }

read_type_definition:
  | description = read_description
    SCALAR
    name = read_name
    {
      ScalarTypeDefinition {
        description;
        name;
      }
    }
  | description = read_description
    TYPE
    name = read_name
    interfaces = read_interfaces
    LEFT_BRACE
    fields = read_field_definition*
    RIGHT_BRACE
    {
      ObjectTypeDefinition {
        description;
        name;
        fields;
        interfaces;
      }
    }
  | description = read_description
    ENUM
    name = read_name
    LEFT_BRACE
    values = read_enum_value_definition*
    RIGHT_BRACE
    {
      EnumTypeDefinition {
        description;
        name;
        values;
      }
    }
  | description = read_description
    INTERFACE
    name = read_name
    LEFT_BRACE
    fields = read_field_definition*
    RIGHT_BRACE
    {
      InterfaceTypeDefinition {
        description;
        name;
        fields;
      }
    }
  | description = read_description
    UNION
    name = read_name
    EQUALS
    PIPE?
    t = read_name
    ts = read_union_member+
    {
      UnionTypeDefinition {
        description;
        name;
        members = t :: ts;
      }
    }
  | description = read_description
    INPUT
    name = read_name
    LEFT_BRACE
    fields = read_input_value*
    RIGHT_BRACE
    {
      InputObjectTypeDefinition {
        description;
        name;
        fields;
      }
    }
;

read_interfaces:
  | { None }
  | IMPLEMENTS
    AMP?
    t = read_name
    rest = read_rest_interfaces*
    {
      Some (t :: rest)
    }
  ;

read_rest_interfaces:
  | AMP
    t = read_name
    {
      t
    }

read_field_definition:
  | description = read_description
    name = read_name
    arguments = read_arguments
    COLON
    typ = read_type
    {
      {
        description;
        arguments;
        name;
        typ;
      }
    }
  ;

read_arguments:
  | { None }
  | LEFT_PAREN
    arguments = read_input_value*
    RIGHT_PAREN
    {
      Some arguments
    }
  ;

read_input_value:
  | description = read_description
    name = read_name
    COLON
    typ = read_type
    default_value = read_default_value?
    {
      {
        description;
        name;
        typ;
        default_value;
      }
    }
    ;

read_default_value:
  | EQUALS
    value = read_value
    {
      value
    }

read_value:
  | value = STRING
    { `String value }
  | value = BLOCK_STRING
    { `String value }
  | value = INT
    { `Int value }
  | value = FLOAT
    { `Float value }
  | TRUE
    { `Bool true }
  | FALSE
    { `Bool false }
  | NULL
    { `Null }
  | value = read_enum_value
    { `Enum value }
  | LEFT_BRACK value = read_value* RIGHT_BRACK
    { `List value }
  | LEFT_BRACE value = read_object_field* RIGHT_BRACE
    { `Assoc value }
  ;

read_object_field:
  | key = NAME COLON value = read_value
    {
      (key, value)
    }
  ;

read_enum_value_definition:
  | description = read_description
    value = read_enum_value
    {
      {
        description;
        value;
      }
    }
  ;

read_enum_value:
  | v = NAME    { v }
  | SCALAR      { "scalar" }
  | TYPE        { "type" }
  | INTERFACE   { "interface" }
  | UNION       { "union" }
  | ENUM        { "enum" }
  | INPUT       { "input" }
  | IMPLEMENTS  { "implements" }
  | EXTEND      { "extend" }
  | SCHEMA      { "schema" }
  | QUERY       { "query" }
  | MUTATION    { "mutation" }
  | SUBSCRIPTION{ "subscription" }
  ;

read_union_member:
  | PIPE
    t = read_name {
      t
    }
  ;

read_description:
  | { None }
  | str = STRING { Some str }
  | str = BLOCK_STRING { Some str }
  ;

read_type:
  | name = read_name
    {
      NamedType name
    }
  | LEFT_BRACK
    t = read_type
    RIGHT_BRACK
    {
      ListType t
    }
  | t = read_type BANG
    {
      NonNullType t
    }
  ;

read_name:
  | v = NAME    { v }
  | TRUE        { "true" }
  | FALSE       { "false" }
  | NULL        { "null" }
  | SCALAR      { "scalar" }
  | TYPE        { "type" }
  | INTERFACE   { "interface" }
  | UNION       { "union" }
  | ENUM        { "enum" }
  | INPUT       { "input" }
  | IMPLEMENTS  { "implements" }
  | EXTEND      { "extend" }
  | SCHEMA      { "schema" }
  | QUERY       { "query" }
  | MUTATION    { "mutation" }
  | SUBSCRIPTION{ "subscription" }
