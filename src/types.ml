type typ =
  | NamedType   of string
  | ListType    of typ
  | NonNullType of typ

type primitive_value = [
  | `Null
  | `Int of int
  | `Float of float
  | `String of string
  | `Bool of bool
  | `Enum of string
]

type const_value = [
  | primitive_value
  | `List of const_value list
  | `Assoc of (string * const_value) list
]

type argument = {
  name : string;
  value : const_value; 
}

type arguments = argument list

type input_value = {
  description: string option;
  name : string;
  typ: typ;
  default_value: const_value option
}

type directive = {
  name : string;
  arguments: arguments option;  
}

type field_definition = {
  description: string option;
  arguments: input_value list option;
  name : string;
  typ: typ;
}

type scalar_type_definition = {
  description: string option;
  name: string;
}

type object_type_definition = {
  description: string option;
  name: string;
  fields: field_definition list;
  interfaces: string list option;
}

type enum_value = {
  description: string option;
  value: string;
}

type enum_type_definition = {
  description: string option;
  name: string;
  values: enum_value list;
}

type interface_type_definition = {
  description: string option;
  name: string;
  fields: field_definition list;
  directives: directive list;
}

type union_type_definition = {
  description: string option;
  name: string;
  members: string list;
}

type input_object_type_definition = {
  description: string option;
  name: string;
  fields: input_value list
}

type type_definition =
  | ScalarTypeDefinition of scalar_type_definition
  | ObjectTypeDefinition of object_type_definition
  | InterfaceTypeDefinition of interface_type_definition
  | UnionTypeDefinition of union_type_definition
  | EnumTypeDefinition of enum_type_definition
  | InputObjectTypeDefinition of input_object_type_definition

type operation_type_definition =
  | Query of string
  | Mutation of string
  | Subscription of string

type schema_definition = operation_type_definition list

type definition =
  | SchemaDefinition of schema_definition
  | TypeDefinition of type_definition
  | SchemaExtension of schema_definition
  (* | TypeExtension *)

type document =
  definition list
