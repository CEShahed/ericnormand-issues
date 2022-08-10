import std/[unittest]


# --- helpers


# --- main
func spots(neighbors: seq[int], newMember: int): tuple[happy, unhappy: seq[float]] =
  discard


suite "Tests":
  test "[1 1]     1":
    check spots(@[1, 1], 1) == (@[0.5], @[])

  test "[1 1]     2":
    check spots(@[1, 1], 2) == (@[], @[0.5])

  test "[1 1 2]   4":
    check spots(@[1, 1, 2], 4) == (@[1.5], @[0.5])

  test "[1 1 2 2] 3":
    check spots(@[1, 1, 2, 2], 3) == (@[0.5, 1.5], @[2.5])
