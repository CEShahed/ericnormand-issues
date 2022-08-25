import std/[unittest]


type Map = seq[seq[int]]

# --- main
func neighbours(map: Map, row, col: int): range[0..4] =
  const moves = [
    (0, +1),
    (0, -1),
    (+1, 0),
    (-1, 0)]

  for (dx, dy) in moves:
    if (col+dx in 0..map[row].high) and (row+dy in 0..map.high):
      if map[row+dy][col+dx] == 1:
        inc result

func relativePerimeter(neighbours: range[0..4]): range[0..4] =
  case neighbours:
  of 0: 4
  of 1: 3
  of 2: 2
  of 3: 1
  of 4: 0

func width(map: Map): int = map[0].len
func height(map: Map): int = map.len

func perimeterMap(map: Map): Map =
  result = map

  for row in 0 ..< map.height:
    for col in 0 ..< map.width:
      result[row][col] = 
        if map[row][col] == 1:
          relativePerimeter neighbours(map, row, col)
        else:
          0

func perimeter(map: Map): int =
  let pm = perimeterMap map

  for row in 0 ..< map.height:
    for col in 0 ..< map.width:
      result.inc pm[row][col]

# --- tests
suite "helpers":
  discard

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
