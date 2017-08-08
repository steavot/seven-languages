# start by denoting the logic

loopfib := method(n,
  if (n<3, 1,
    a := 1
    b := 1
    for(i, 3, n, 1,
      c := a + b
      a = b
      b = c
    )
    b
  )
)

loopfib(8) println

recursiveFib := method(n, if(n<3, 1, recursiveFib(n-2) + recursiveFib(n-1)))
recursiveFib(8) println

0
