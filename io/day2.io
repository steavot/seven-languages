//writeln(OperatorTable, "\n\n\n")

# edit / to take zero as denominator
oldDiv := Number getSlot("/")
Number / = method(denominator, if(denominator==0, 0, oldDiv(denominator)))

10/0 println

// Add up 2D array
// Add the method to list to collapse/fold the top level list while summing
// each line.
List sum2d := method(reduce(tot, row, tot + row sum, 0))

array2d := list(list(1,9,2,8),
                list(3,7,4,6),
                list(5,5,5))

"Sum of the 2D array: " print
array2d sum2d println

// we could also just use flatten

"sum of the 2D array using flatten: " print
array2d flatten sum println

# however these work when the list is not a true 2D array (as above)
# let's make this more robust using some methods from listmethods.io
doFile("listmethods.io")
"Test whether array2d is a list of lists of numbers: " print
array2d listoflistsofnumbers println
"Test whether the array2d is has consistent row lengths: " print
array2d true2d println

"applying new sum2d method on old array gets: " print
array2d sum2d println

# make an actual 2d array
actual2Darray := list(list(1,2,3,4),
                      list(4,3,2,1))
"\n\n\n" print
actual2Darray listoflistsofnumbers println
actual2Darray true2d println
"With an actual 2D array we get: " print
actual2Darray sum2d println

"\n\n\n" print
// stick a 1D array and othr bad things in to mess with it
array1d := list(5,6,7,8)
"putting in a 1d array: " print
array1d sum2d println

array3d := list(list(list(1,2),
                     list(3,4)),
                list(list(5,6),
                     list(7,8))
                )

"putting in a 3d array: " print
array3d sum2d println

array2dword := list(list(1,2,3,4),
                    list(5,6,7,"eight"))
"putting in 2d array with word in: " print
array2dword sum2d println

0
