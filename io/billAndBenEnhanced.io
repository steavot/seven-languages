// same deal as billAndBen but now we're trying to promote chooseB to Object.
FlowerPotMen := Object clone
FlowerPotMen chooseB := method(choice == "plan B")

doFile("unless.io")
ben := FlowerPotMen clone
ben choice := "plan B"
ben giveA := method(write("ben says: decision for plan A\n"))
ben giveB := method(write("ben says: decision for plan B\n"))

ben makeChoiceMyself := method(
  unless(chooseB, giveA, giveB)
)
"ben's chosen plan B: " print
ben chooseB println

ben makeChoiceMyself

# Now we'll introduce bill as the decider of which plan to execute but let
# ben make the annoucement of the decision
doFile("unlessTargetDecides.io")
bill := FlowerPotMen clone
bill choice := "I cba to decide"

ben askBillThenAnnounce := method(
  bill unlessTargetDecides(chooseB, giveA, giveB)
)

"bill's choice: " print
bill choice print
"\n" print
"bill's chosen plan B: " print
bill chooseB println

ben askBillThenAnnounce

# The above works, it think thats because method() delays the evaluation
# choiceB is now working like an Abstract Base Method ... I think

// Taking it one step further, ben tells bill to decide and announce
doFile("unlessTargetDoesAll.io")
bill giveA := method(write("bill says: decision for plan A\n"))
bill giveB := method(write("bill says: decision for plan B\n"))

ben tellBillToSortItOut := method(
  bill unlessTargetDoesAll(chooseB, giveA, giveB)
)

"" println
"ben now delegates all work to bill" println
ben tellBillToSortItOut

// let's take a peak at our objects with ancestors
doFile("ancestors.io")
writeln
"looking at the acenestory of:" println
"bill" println
bill ancestors
writeln
"ben" println
ben ancestors