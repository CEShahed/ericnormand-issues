import std/[unittest, tables, sequtils]


# --- helper
type SeqTable[K, V] = OrderedTable[K, seq[V]]

func add[K, V](st: var SeqTable[K, V], key: K, value: V) =
  if key in st:
    st[key].add value
  else:
    st[key] = @[value]

# --- main
func indexMap(s: seq[int]): seq[tuple[value: int, indexes: seq[int]]] =
  var acc: SeqTable[int, int]

  for i, n in s:
    acc.add n, i

  acc.pairs.toseq

# --- tests
suite "helpers":
  discard

suite "main":
  test "empty":
    check indexMap(@[]).len == 0

  test "1 2 3":
    check indexMap(@[1, 2, 3]) == {1: @[0], 2: @[1], 3: @[2]}

  test "1 1 1":
    check indexMap(@[1, 1, 1]) == {1: @[0, 1, 2]}

  test "1 2 1 2 1":
    check indexMap(@[1, 2, 1, 2, 1]) == {1: @[0, 2, 4], 2: @[1, 3]}
