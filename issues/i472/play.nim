import std/[unittest]

type Point = tuple[x, y: int]

func move(moves: openArray[int]): Point =
  for i, m in moves:
    case i mod 4:
    of 0: result.y += m
    of 1: result.x += m
    of 2: result.y -= m
    of 3: result.x -= m
    else: assert false


suite "tests":
  check move([]) == (0, 0) # No motion
  check move([10]) == (0, 10) # move 10 straight north
  check move([10, 2]) == (2, 10)
  check move([10, 2, 3]) == (2, 7)
