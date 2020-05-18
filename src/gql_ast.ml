(* 2.9 https://facebook.github.io/graphql/June2018/#sec-Input-Values *)

type primitive_value = [
  | `Null
  | `Int of int
  | `Float of float
  | `String of string
  | `Bool of bool
  | `Enum of string
]

type value_const = [
  | primitive_value
  | `List of value_const list
  | `Assoc of (string * value_const) list
]

(* 2.6 https://facebook.github.io/graphql/June2018/#Arguments *)

type argument_const = {
  name : string;
  value : value_const; 
}

type arguments_const = argument_const list

(* 2.11 https://facebook.github.io/graphql/June2018/#Type *)

type type_ref =
  | NamedType   of string
  | ListType    of type_ref
  | NonNullType of type_ref

(* 2.12 https://facebook.github.io/graphql/June2018/#sec-Language.Directives *)
type directive_const = {
  name : string;
  arguments: arguments_const option;  
}

type directives_const = directive_const list

(* 3.5 https://facebook.github.io/graphql/June2018/#sec-Scalars *)

type scalar_type_definition = {
  description: string option;
  name: string;
  directives: directives_const option;
}

(* 3.6.1 https://facebook.github.io/graphql/June2018/#sec-Field-Arguments *)

type input_value_definition = {
  description: string option;
  name : string;
  type_: type_ref;
  default_value: value_const option;
  directives: directives_const option;
}

type arguments_definition = input_value_definition list

(* 3.6 https://facebook.github.io/graphql/June2018/#sec-Objects *)

type field_definition = {
  description: string option;
  arguments: arguments_definition option;
  name : string;
  type_: type_ref;
  directives: directives_const option;
}

type object_type_definition = {
  description: string option;
  name: string;
  fields: field_definition list option;
  interfaces: string list option;
  directives: directives_const option;
}

(* 3.7 https://facebook.github.io/graphql/June2018/#sec-Interfaces *)

type interface_type_definition = {
  description: string option;
  name: string;
  fields: field_definition list option;
  directives: directives_const option;
}

(* 3.8 https://facebook.github.io/graphql/June2018/#sec-Unions *)

type union_type_definition = {
  description: string option;
  name: string;
  members: string list option;
  directives: directives_const option;
}

(* 3.9 https://facebook.github.io/graphql/June2018/#sec-Enums *)

type enum_value = {
  description: string option;
  value: string;
  directives: directives_const option;
}

type enum_type_definition = {
  description: string option;
  name: string;
  values: enum_value list option;
  directives: directives_const option;
}

(* 3.10 https://facebook.github.io/graphql/June2018/#sec-Input-Objects *)

type input_object_type_definition = {
  description: string option;
  name: string;
  fields: input_value_definition list option;
  directives: directives_const option;
}

(* https://facebook.github.io/graphql/June2018/#sec-Types *)

type type_definition =
  | ScalarTypeDefinition of scalar_type_definition
  | ObjectTypeDefinition of object_type_definition
  | InterfaceTypeDefinition of interface_type_definition
  | UnionTypeDefinition of union_type_definition
  | EnumTypeDefinition of enum_type_definition
  | InputObjectTypeDefinition of input_object_type_definition

(* https://facebook.github.io/graphql/June2018/#sec-Type-System *)

type type_system_definition = 
  | SchemaDefinition
  | TypeDefinition of type_definition
  | DirectiveDefinition

(* https://facebook.github.io/graphql/June2018/#sec-Type-System-Extensions *)

type type_system_extension = 
  | SchemaExtension
  | TypeExtension

(* https://facebook.github.io/graphql/June2018/#sec-Language.Document *)

type definition =
  | TypeSystemDefinition of type_system_definition
  | TypeSystemExtension of type_system_extension

type document = definition list
