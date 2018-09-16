open Types

let () =
  let text = Node.Fs.readFileSync "example/example.graphql" `utf8 in
  ignore @@ Parse.parse text
