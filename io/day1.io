"evaluate 1 + 1" println
(1+1) println

"try to evauluate 1 + \"one\"" println
attempt := try(1 + "one")
attempt catch(Exception, "that didn't work" println)
"try some mixing of integers and floats" println
attempt = try(1 + 1.0)
"it would appear a number is just a number" println
"the type of 0.5" println
0.5 type println
"the type of 1" println
1 type println

"\n\n testing what evauluates to boolean true or false" println
"0:" println
0 and true println
"empty string:" println
"" and true println
"nil:" println
nil and true println

# This next section shows what =, := and ::= do.
Clothing := Object clone
Gloves := Clothing clone do (
  color ::= nil
)
myGloves := Gloves clone setColor("red")

"\n\n how can you tell what slots an object supports?" println
myGloves slotNames size println
myGloves slotNames println
myGloves getSlot("color") println

"\n\n calling a method by name"
codeToRun := method("Clippy: it looks like you are trying to run code" println)
runByName := method(name, self getSlot(name) call)

runByName("codeToRun")

"\n\n now let's take a look at our lobby"
Lobby println