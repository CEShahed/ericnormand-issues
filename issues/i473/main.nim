import std/[unittest, math]

func simplify(a, b: int): tuple[a, b: int] =
  let d = gcd(a, b) # step 1
  (a div d, b div d) # step 2


suite "tests":
  test "10/10":
    check simplify(10, 10) == (1, 1)

  test "1/3":
    check simplify(1, 3) == (1, 3)

  test "2/4":
    check simplify(2, 4) == (1, 2)

  test "100/40":
    check simplify(100, 40) == (5, 2)
