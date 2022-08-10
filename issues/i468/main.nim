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
  result = (n, n) # default
  let digits = $n # step 1

  for i in 0 .. digits.high-1: # step 2
    for j in 1 .. digits.high: # step 2
      if (i != 0) or (i == 0 and digits[j] != '0'): # step 2
        let newNumber =  
          swapped(digits, i, j) # step 3
          .parseInt # step 4
        
        result.update newNumber # step 5



# --- tests
suite "Helpers":
  test "swapped":
    check swapped("hey", 1, 2) == "hye"

  test "update":
    var mm = (0, 0)
    mm.update 2
    check mm == (2, 0)
    mm.update -3
    check mm == (2, -3)


suite "Tests":
  test "213":
    check swapMaxMin(213) == (312, 123)

  test "12345":
    check swapMaxMin(12345) == (52341, 12345) # the number was already the smallest

  test "100":
    check swapMaxMin(100) == (100, 100) # no swap possible because of zeroes
