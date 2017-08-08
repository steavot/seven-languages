// methodsI've implemented in lists

List listofnumbers := method(
  (List type == "List") and reduce(t, e, t and e type == "Number")
)

List listoflistsofnumbers := method(
  type =="List" and reduce(tot,
  row,
  tot and row listofnumbers,
  true)
)

List rectangularMatrix := method(
                            rowSizes := list()
                            foreach(row, rowSizes append(row size))
                            rowSizes unique size == 1
                          )

List sum2d := method(if(listoflistsofnumbers and rectangularMatrix,
                    flatten sum,
                    "list is not a rectangular array"))

List myAverage1d := method(
  if(listofnumbers,
    if(size == 0, 0, sum/size),
    Exception raise("Cannot implent myAverage1d on object")
  )
)

0
