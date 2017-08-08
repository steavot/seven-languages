# here bob & ben make their choices all by themselves
# they sends a message to Object, unless assesses their slots with call sender
doFile("unless.io")

bob := Object clone
bob choice := "plan A"
bob makeChoiceMyself := method(
  unless(choice == "plan B", write("bob wants A\n"), write("bob wants B\n"))
)

bob makeChoiceMyself

# now with ben, try to add some abstraction
ben := Object clone
ben choice := "plan B"
ben chooseB := ben choice == "plan B"
ben giveA := method(write("ben says: decision for plan A\n"))
ben giveB := method(write("ben says: decision for plan B\n"))

ben makeChoiceMyself := method(
  unless(chooseB, giveA, giveB)
)
"ben's chosen plan B: " print
ben chooseB print
"\n" print

ben makeChoiceMyself

# Now we'll introduce bill as the decider of which plan to execute but let
# ben make the annoucement of the decision
doFile("unlessTargetDecides.io")
bill := Object clone
bill choice := "I cba to decide"
bill chooseB := bill choice == "plan B"

ben askBillThenAnnounce := method(
  bill unlessTargetDecides(chooseB, giveA, giveB)
)

"bill's choice: " print
bill choice print
"\n" print
"bill's chosen plan B: " print
bill chooseB print
"\n" print

ben askBillThenAnnounce
