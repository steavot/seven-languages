// day 3 exercise, add attributes to xml
// WIP: this doesn't work yet
doFile("./phonebook.io")

Builder := Object clone
Builder level := 0
Builder indent := method("  " repeated(level))

Builder forward := method(
  firstArg := call message arguments at(0)
  if((firstArg type == "Map") and (firstArg asList size == 1),
     writeln(indent,
             "<",
             call message name,
             " ",
             firstArg asList at(0) at(0),
             "=",
             "\"",
             firstArg asList at(0) at(1),
             "\"",
             ">"),
     writeln(indent, "<", call message name, ">")
  )
  level = level + 1
  args foreach(arg,
    content := self doMessage(arg);
    if(content type == "Sequence", writeln(indent, content))
  )
  level = level - 1
  writeln(indent, "</", call message name, ">")
)

Builder ul("{\"thing\":\"attribute\"}",
  li("Io"),
  li("Lua"),
  li("JavaScript"))