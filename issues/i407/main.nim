import std/[unittest]


type
  Point = tuple
    x, y: int

  Geomery = Slice[Point]

# --- helpers
func intersectionSize(a, b: Slice[int]): int =
  ## overlaps:
  ## 1)
  ##     o---A---o
  ##  o---B---o
  ##
  ## 2)
  ##  o---A---o
  ##     o---B---o
  ##
  ##
  ## 3)
  ##  o----A----o
  ##    o--B--o
  ##
  ## 4)
  ##    o---A---o
  ##  o-----B-----o
  ##
  ## nothing
  ##
  ## 5)
  ##             o---A---o
  ##  o---B---o
  ##
  ## 6)
  ##
  ##  o---A---o
  ##            o---B---o

  let
    l = max(a.a, b.a)
    h = min(a.b, b.b)
    size = h-l

  if size in 0..min(a.len, b.len): size
  else: 0

func xrange(geo: Geomery): Slice[int] =
  geo.a.x .. geo.b.x

func yrange(geo: Geomery): Slice[int] =
  geo.a.y .. geo.b.y

# --- main
func overlapArea(g1, g2: Geomery): int =
  intersectionSize(g1.xrange, g2.xrange) *
  intersectionSize(g1.yrange, g2.yrange)

# --- tests
suite "helpers":
  test "intersectionSize":
    check:
      intersectionSize(0..4, 5..8) == 0
      intersectionSize(0..4, 2..5) == 2

suite "main":
  test "area":
    check overlapArea((0, 0)..(10, 10), (5, 5)..(15, 15)) == 25
    check overlapArea((2, -9)..(13, -4), (5, -11)..(7, -2)) == 10

  test "2 identical rectangles":
    check overlapArea((0, 0)..(1, 1), (0, 0)..(1, 1)) == 1

  test "enclosing rectangles":
    check overlapArea((0, 0)..(1, 1), (-1, -1)..(2, 2)) == 1

  test "no overlap":
    check overlapArea((0, 0)..(1, 1), (6, 6)..(8, 8)) == 0
