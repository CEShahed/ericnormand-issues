import std/[unittest]

type
  Board = array[8, array[8, int]]
  Position = tuple
    row, col: int

func contains(b: Board, p: Position): bool =
  (p.col in 0..<8) and
  (p.row in 0..<8) and
  b[p.row][p.col] == 1

func `+`(p1, p2: Position): Position =
  (p1.row + p2.row, p1.col + p2.col)

iterator i8x8(): Position =
  for r in 0..<8:
    for c in 0..<8:
      yield (r, c)

const oneWayknightMoves = [
  (-2, +1), 
  (+2, +1), 
  (+1, +2), 
  (+1, -2)]

# --- main
func captures(b: Board): seq[Slice[Position]] =
  for c1 in i8x8():
    if c1 in b:
      for move in oneWayknightMoves:
        let c2 = c1 + move

        if c2 in b:
          result.add c1..c2


# --- tests
suite "helpers":
  test "in":
    check (0, 3) in [
      [0, 0, 0, 1, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0],
      [0, 1, 0, 0, 0, 1, 0, 0],
      [0, 0, 0, 0, 1, 0, 1, 0],
      [0, 1, 0, 0, 0, 1, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0],
      [0, 1, 0, 0, 0, 0, 0, 1],
      [0, 0, 0, 0, 1, 0, 0, 0]]

suite "tests":
  test "1":
    check captures([
      [0, 0, 0, 1, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0],
      [0, 1, 0, 0, 0, 1, 0, 0],
      [0, 0, 0, 0, 1, 0, 1, 0],
      [0, 1, 0, 0, 0, 1, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0],
      [0, 1, 0, 0, 0, 0, 0, 1],
      [0, 0, 0, 0, 1, 0, 0, 0]]).len == 0 # no captures

  test "2":
    check captures([
      [0, 0, 0, 1, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 1, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0]]) == @[((0, 3)..(2, 4))] # one capture

  test "3":
    check captures([
      [0, 0, 0, 1, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 1, 0, 0, 0],
      [0, 0, 1, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0]]) == @[(0, 3)..(2, 4), (2, 4)..(3, 2)] # two capture
