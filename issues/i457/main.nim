import std/[unittest]

type
  ChessPiece = enum
    king, queen, bishop, rook, knight, pawn

  Column = 'A' .. 'H'
  Row = 1 .. 8

  Position = tuple
    col: Column
    row: Row


# --- helpers
func toDigit(ch: char): int =
  assert ch in '0' .. '9'
  ch.ord - '0'.ord

func parsePos(s: string): Position =
  (Column s[0], Row toDigit s[1])

# --- main
func canMoveImpl(cp: ChessPiece, start, dest: Position): bool =
  case cp:
  of king:
    abs(start.row - dest.row) <= 1 and
    abs(start.col.int - dest.col.int) <= 1

  of queen:
    canMoveImpl(bishop, start, dest) or canMoveImpl(rook, start, dest)

  of bishop:
    abs(start.row - dest.row) == abs(start.col.int - dest.col.int)

  of rook:
    (start.row == dest.row) or (start.col == dest.col)

  of knight:
    let
      dx = start.col.int - dest.col.int
      dy = start.row - dest.row

    (dx.abs, dy.abs) in [(2, 1), (1, 2)]

  of pawn:
    start.row + 1 == dest.row

func canMove(cp: ChessPiece, move: Slice[string]): bool =
  try:
    let
      start = parsePos move.a # step 1
      dest = parsePos move.b  # step 1

    canMoveImpl(cp, start, dest) # step 3 & 4

  except:
    false # step 2


# --- tests
suite "Helpers":
  test "toDigit":
    check toDigit('0') == 0
    check toDigit('9') == 9
    check toDigit('6') == 6

  test "parsePos":
    check parsePos("A3") == (Column 'A', Row 3)
    check parsePos("C7") == (Column 'C', Row 7)
    check parsePos("H5") == (Column 'H', Row 5)

suite "tests":
  test "pawn :: 'A2' => 'A3'":
    check canMove(pawn, "A2".."A3") == true

  test "queen :: 'H1' => 'A8'":
    check canMove(queen, "H1".."A8") == true

  test "knight :: 'A4' => 'A5'":
    check canMove(knight, "A4".."A5") == false # (that's not how knights move)

  test "king :: 'A8' => 'A9'":
    check canMove(king, "A8".."A9") == false # (that's off the board)
