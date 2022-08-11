import std/[tables, unittest]
import iterrr

# --- helpers
iterator combinations(s: seq[int]): (int, int) =
  for i in 0 .. s.high - 1:
    for j in i+1 .. s.high:
      yield (s[i], s[j])


# --- main
func ulam(n: Natural): seq[int] =
  case n:
  of 0: @[]
  of 1: @[1]
  of 2: @[1, 2]
  else:
    var
      sequence = @[1, 2]
      possibleSums: CountTable[int]

    for _ in 3 .. n:
      for (a, b) in combinations(sequence):
        possibleSums.inc a+b

      sequence.add:
        possibleSums.pairs |>
        filter[n, r](r == 1 and n > sequence[^1])
        .map[n, _](n)
        .min()

      reset possibleSums

    sequence

# --- tests
suite "Tests":
  test "2":
    check ulam(2) == @[1, 2]

  test "5":
    check ulam(5) == @[1, 2, 3, 4, 6]

  test "17":
    check ulam(17) == @[1, 2, 3, 4, 6, 8, 11, 13, 16, 18, 26, 28, 36, 38, 47,
        48, 53]
