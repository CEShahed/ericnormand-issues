import std/[unittest, tables, options]

# --- main
func mostFrequent(numbers: seq[int]): Option[int] =
  var maxi: Option[tuple[n, repeats: int]]

  for number, repeats in numbers.toCountTable:
    if (isNone maxi) or (maxi.get.repeats < repeats):
      maxi = some (number, repeats)

  if isSome maxi: 
    result = some maxi.get.n

# --- tests

suite "main":
  test "empty":
    check mostFrequent(@[]).isNone

  test "1":
    check mostFrequent(@[2, 2, 3, 4, 4, 2, 1, 1, 3, 2]) == some 2

  test "2":
    check mostFrequent(@[1, 1, 4, 4, 5]) == some 4

