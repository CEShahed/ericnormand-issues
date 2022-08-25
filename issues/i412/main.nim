import std/[unittest]


# --- helpers

# --- main
func perimeter(area: seq[seq[int]]): int =
  discard

# --- tests
suite "helpers":
  discard

suite "main":
  test "simple":
    check perimeter(@[[1]]) == 4

  test "empty":
    check perimeter(@[[0]]) == 0

  test "lands next to each other":
    check perimeter(@[[1, 1]]) == 6

  test "implicit encircling of water":
    check perimeter(@[
      @[1, 1],
      @[1, 1]]) == 8
              
    check perimeter(@[
      @[0,0,0,0],
      @[0,1,1,0],
      @[0,1,1,0],
      @[0,0,0,0]]) == 8

  test "weird shapes":
    check perimeter(@[
      @[1, 1, 1, 1, 1, 1],
      @[1, 0, 0, 0, 0, 1],
      @[1, 0, 1, 1, 0, 1],
      @[1, 0, 0, 0, 0, 1],
      @[1, 1, 1, 1, 1, 1]]) == 42

    check perimeter(@[
      [0, 1, 0, 0],
      [1, 1, 1, 0],
      [0, 1, 0, 0],
      [1, 1, 0, 0]]) == 16
