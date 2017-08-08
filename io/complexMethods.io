// complex number Nc
Nc := List clone setSize(2) mapInPlace(_, Number)
Nc re := method(at(0))
Nc im := method(at(1))

nc := method(a,b, Nc clone atPut(0,a) atPut(1,b))

// Complex conj
Nc conj := method(Nc clone atPut(0, re) atPut(1, im*(-1)))

// Addition & Subtraction
Nc + := method(x, nc(at(0) + x at(0), at(1) + x at(1)))
Nc - := method(x, nc(at(0) - x at(0), at(1) - x at(1)))
Nc * := method(x, nc(
                    at(0)*(x at(0)) - at(1)*(x at(1)),
                    at(0)*(x at(1)) + at(1)*(x at(0))
                  )
              )

// Mod - use reduce
Nc modSq := method((* conj) at(0))
Nc mod := method(modSq sqrt)
/*
ComplexMatrix := List clone

dim := method(x, y, ComplexMatrix clone setSize(y) mapInPlace(_, List clone setSize(x)))

ComplexMatrix set := method(x, y, value, at(y) atPut(x, value))
ComplexMatrix get := method(x, y, value, at(y) at(x))

ComplexMatrix transpose := method(
                    flipped := dim(size, at(0) size)
                    foreach(y, row, row foreach(x,value, flipped set(y,x,value)))
                    flipped
                    )

my2d := dim(2,3)
my2d set(1, 2, 6)
my2d set(0, 1, 7)
my2d println
my2d get(1,2) println
my2d transpose println
*/


0