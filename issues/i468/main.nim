import std/[strutils, unittest]

# --- type defs
type MaxxieMinnie = tuple
  maxxie: int
  minnie: int


# --- helpers
func swapped(s: string, a, b: int): string =
  ## swaps indexes `a` and `b` in string `s`
  result = s
  swap result[a], result[b]

func update(result: var MaxxieMinnie, newValue: int) =
  ## updates the result based on new value
  if newValue > result.maxxie:
    result.maxxie = newValue

  elif newValue < result.minnie:
    result.minnie = newValue

# --- main
func swapMaxMin(n: Positive): MaxxieMinnie =
  let digits = $n 
  result = (n, n) # default

  for i in 0 .. digits.high-1:
    for j in 1 .. digits.high:
      if (i != 0) or (i == 0 and digits[j] != '0'):
        result.update parseInt swapped(digits, i, j)


# --- tests
suite "Helpers":
  test "swapped":
    check swapped("hey", 1, 2) == "hye"

suite "Tests":
  test "213":
    check swapMaxMin(213) == (312, 123)

  test "12345":
    check swapMaxMin(12345) == (52341, 12345) # the number was already the smallest

  test "100":
    check swapMaxMin(100) == (100, 100) # no swap possible because of zeroes
