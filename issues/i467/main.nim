import std/[unittest]

type NumberKind = enum
  even, odd

# --- helpers
func kind(n: int): NumberKind =
  if n mod 2 == 0: even
  else: odd

func isHappy(prev, next, you: int): bool =
  ## returns true is `you` is the same kind as one of `prev` and `next`
  (prev.kind == you.kind) or
  (you.kind == next.kind)

# --- main
func spots(neighbors: seq[int], newMember: int): tuple[happy, unhappy: seq[float]] =
  for i in 0..neighbors.high-1:
    let spot = i.toFloat + 0.5

    case isHappy(neighbors[i], neighbors[i+1], newMember):
    of true: result.happy.add spot
    of false: result.unhappy.add spot


suite "Tests":
  test "[1 1]     1":
    check spots(@[1, 1], 1) == (@[0.5], @[])

  test "[1 1]     2":
    check spots(@[1, 1], 2) == (@[], @[0.5])

  test "[1 1 2]   4":
    check spots(@[1, 1, 2], 4) == (@[1.5], @[0.5])

  test "[1 1 2 2] 3":
    check spots(@[1, 1, 2, 2], 3) == (@[0.5, 1.5], @[2.5])
