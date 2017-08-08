// From the book, for use in io terminal with doFile("unless.io")
unless := method(
  (call sender doMessage(call message argAt(0))) ifFalse(
  call sender doMessage(call message argAt(1))) ifTrue(
  call sender doMessage(call message argAt(2)))
)