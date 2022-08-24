import std/[unittest, sequtils, strutils]

# --- helpers
func foldSortedFactors(factors: seq[int]): seq[tuple[n, repeat: int]] =
  for n in factors:
    if result.len != 0 and result[^1].n == n:
      inc result[^1].repeat
    else:
      result.add (n, 1)

func toExpr(n, exponent: int): string =
  case exponent
  of 1: $n
  else: $n & '^' & $exponent

func toExpr(f: tuple[n, repeat: int]): string =
  toExpr f.n, f.repeat

# --- main
func formatProduct(factors: seq[int]): string =
  foldSortedFactors(factors)
  .map(toExpr)
  .join " x "

# --- tests
suite "helpers":
  test "foldSortedFactors":
    check foldSortedFactors(@[2, 2, 2, 4, 5, 5, 6]) == @[(2, 3), (4, 1), (5, 2), (6, 1)]

  test "toExpr":
    check toExpr(4, 3) == "4^3"
    check toExpr(4, 1) == "4"

suite "main":
  test "2 2 3 5":
    check formatProduct(@[2, 2, 3, 5]) == "2^2 x 3 x 5"

  test "2 3 3 3 11 11":
    check formatProduct(@[2, 3, 3, 3, 11, 11]) == "2 x 3^3 x 11^2"

  test "7":
    check formatProduct(@[7]) == "7"
