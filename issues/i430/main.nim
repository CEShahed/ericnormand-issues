import std/[unittest, sequtils, algorithm]


# --- helpers
func toDigit(n: char): int =
  assert n in '0' .. '9'
  n.ord - '0'.ord

func digits(n: int): seq[int] =
  ($n).map toDigit

# --- main
func newNumber(n: int): bool =
  let d = digits n

  if 0 in d: 
    d[0] == min(d.filterIt(it != 0)) and
    isSorted(d[1..^1])

  else: 
    isSorted d

# --- tests
suite "helpers":
  test "toDigit":
    check toDigit('8') == 8

  test "digits":
    check digits(802) == @[8, 0, 2]

suite "main":
  test "789":
    check newNumber(789) == true

  test "645":
    check newNumber(645) == false

  test "104 & 401":
    check newNumber(104) == true
    check newNumber(401) == false

  test "444":
    check newNumber(444) == true # (it's permutations are not smaller than it)
