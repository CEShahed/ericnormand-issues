import std/[unittest]


type Matrix = seq[seq[int]]

# --- helpers

func width(map: Matrix): int = map[0].len
func height(map: Matrix): int = map.len

func neighbours(map: Matrix, row, col: int): range[0..4] =
  const moves = [
    (0, +1),
    (0, -1),
    (+1, 0),
    (-1, 0)]

  for (dx, dy) in moves:
    let
      x = col+dx
      y = row+dy

    if (x in 0..<map.width) and (y in 0..<map.height):
      if map[y][x] == 1:
        inc result

func relativePerimeter(neighbours: range[0..4]): range[0..4] =
  case neighbours:
  of 0: 4
  of 1: 3
  of 2: 2
  of 3: 1
  of 4: 0

func perimeterMap(map: Matrix): Matrix =
  result = map

  for row in 0 ..< map.height:
    for col in 0 ..< map.width:
      result[row][col] =
        if map[row][col] == 1:
          relativePerimeter neighbours(map, row, col)
        else:
          0

func sum(map: Matrix): int =
  for row in map:
    for cell in row:
      result.inc cell

# --- main

func perimeter(map: Matrix): int =
  sum perimeterMap map

# --- tests
suite "helpers":
  let map = @[
    @[0, 1, 0],
    @[1, 1, 1],
    @[0, 1, 0],
    @[1, 1, 0]]

  test "width":
    check width(map) == 3

  test "height":
    check height(map) == 4

  test "neighbours":
    check:
      neighbours(map, 0, 1) == 1
      neighbours(map, 1, 1) == 4
      neighbours(map, 2, 1) == 2

  test "sum":
    check sum(map) == 7

  test "perimeterMap":
    check perimeterMap(map) == @[
      @[0, 3, 0],
      @[3, 0, 3],
      @[0, 2, 0],
      @[3, 2, 0]]

suite "main":
  test "simple":
    check perimeter(@[@[1]]) == 4

  test "empty":
    check perimeter(@[@[0]]) == 0

  test "lands next to each other":
    check perimeter(@[@[1, 1]]) == 6

  test "implicit encircling of water":
    check perimeter(@[
      @[1, 1],
      @[1, 1]]) == 8

    check perimeter(@[
      @[0, 0, 0, 0],
      @[0, 1, 1, 0],
      @[0, 1, 1, 0],
      @[0, 0, 0, 0]]) == 8

  test "weird shapes":
    check perimeter(@[
      @[1, 1, 1, 1, 1, 1],
      @[1, 0, 0, 0, 0, 1],
      @[1, 0, 1, 1, 0, 1],
      @[1, 0, 0, 0, 0, 1],
      @[1, 1, 1, 1, 1, 1]]) == 42

    check perimeter(@[
      @[0, 1, 0, 0],
      @[1, 1, 1, 0],
      @[0, 1, 0, 0],
      @[1, 1, 0, 0]]) == 16
