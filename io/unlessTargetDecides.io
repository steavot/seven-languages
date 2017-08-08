// adaptation of unless where decision is made by target
unlessTargetDecides := method(
  (call target doMessage(call message argAt(0))) ifFalse(
  call sender doMessage(call message argAt(1))) ifTrue(
  call sender doMessage(call message argAt(2)))
)