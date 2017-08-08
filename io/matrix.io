Matrix := List clone

dim := method(x, y, Matrix clone setSize(y) mapInPlace(_, List clone setSize(x)))

Matrix set := method(x, y, value, at(y) atPut(x, value))
Matrix get := method(x, y, value, at(y) at(x))

Matrix transpose := method(
                      flipped := dim(size, at(0) size)
                      foreach(y, row, row foreach(x, value, flipped set(y,x,value)))
                      flipped
                    )

0
