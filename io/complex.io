/* Here what I was trying to do was use some of the lessons from day2 to
   build a set of objects for complex matricies and vectors to build a
   language for perfoming calculations in quantum mechanics with dirac
   notation of bras, kets and operators.

   I ultimately got bored because the lack of type safety mean that while the
   objects are constructed in the right way and interact correctly, you can
   just bung any old shit into them.

   If I was going to see this through I would manually add the type saftey
   into the objects by asserting types of arguments into the methods that
   costruct the objects, then use the DSL and missing methods from day3 to
   understand and return the Dirac notation for bras kets operators:
   "<x|", "|x>", "|x>f(x)<x|" respectively.
*/

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

// Mod
Nc modSq := method((* conj) at(0))
Nc mod := method(modSq sqrt)

// complex matricies
doFile("./matrix.io")
ComMatrix := Matrix clone
cDim := method(x, y, ComMatrix clone setSize(y) mapInPlace(_, List clone setSize(x)))

ComMatrix conj := method(
    opConj := dim(size, at(0) size)
    foreach(y, row, row foreach(x, value, opConj set(x, y, value conj)))
    opConj
  )

// bra-ket
ComVect := List clone
Bra := ComVect clone
Ket := ComVect clone
bra := method(x, Bra clone setSize(x) mapInPlace(_, Nc clone))
ket := method(x, Ket clone setSize(x) mapInPlace(_, Nc clone))
Bra conj := method(
                  cvConj := ket(size)
                  foreach(x, value, cvConj atPut(x, value conj))
                  cvConj
                  )
toKet := method(bra, bra conj)
0
