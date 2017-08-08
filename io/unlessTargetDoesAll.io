// adaptation of unless where decision and announcement is made by target
unlessTargetDoesAll := method(
  (call target doMessage(call message argAt(0))) ifFalse(
  call target doMessage(call message argAt(1))) ifTrue(
  call target doMessage(call message argAt(2)))
)
