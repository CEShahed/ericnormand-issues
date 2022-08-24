import std/[unittest, intsets]


# --- main
func pairMatch(socks: seq[int]):
  tuple[pairs: seq[array[2, int]], unmatched: seq[int]] =

  var desk: IntSet

  for s in socks:
    if s in desk:
      desk.excl s
      result.pairs.add [s, s]

    else:
      desk.incl s


  for s in desk:
    result.unmatched.add s

# --- tests
suite "helpers":
  discard

suite "main":
  test "empty":
    check pairMatch(@[]) == (newseq[array[2, int]](), newseq[int]())

  test "1 2 1":
    check pairMatch(@[1, 2, 1]) == (@[[1, 1]], @[2])

  test "1 2 3 1 2 3 1 1 2":
    check pairMatch(@[1, 2, 3, 1, 2, 3, 1, 1, 2]) == (@[[1, 1], [2, 2], [3, 3],
        [1, 1]], @[2])

