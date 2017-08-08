doFile("./matrix.io")
doFile("./complex.io")

op := cDim(2,2)
op set(0,0,nc(1,0))
op set(1,1,nc(1,0))
op set(0,1,nc(0,1))
op set(1,0,nc(0,1))
op println
op conj println
psy := bra(2)
psy println
psy atPut(0, nc(1,0)) atPut(1, nc(0,1))
psy println
psy conj println
toKet(psy) println

0