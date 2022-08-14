import std/[sequtils, math, unittest]

# --- helpers

func toDigitsRev(i: int): seq[int] =
  if i == 0:
    result = @[0]

  else:
    var temp = i
    while temp != 0:
      result.add temp mod 10
      temp = temp div 10

# --- main
func sumProdImpl(i: int): int =
  if i < 10: i
  else: sumProdImpl toDigitsRev(i).foldl a*b

func sumProd(numbers: seq[int]): int =
  sumProdImpl numbers.sum

# --- tests
suite "helpers":
  test "toDigitsRev":
    check toDigitsRev(123) == @[3, 2, 1]
    check toDigitsRev(0) == @[0]
    check toDigitsRev(100) == @[0, 0, 1]

suite "tests":
  test "4":
    check sumProd(@[4]) == 4

  test "10":
    check sumProd(@[10]) == 0 # (since the sum is two digits, then 1 * 0)

  test "11 12":
    check sumProd(@[11, 12]) == 6

  test "12 16 223":
    check sumProd(@[12, 16, 223]) == 0 # (work it out!)
