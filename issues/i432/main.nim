import std/[unittest]


# --- helpers
func flipInRangeImpl(n: int, s: Slice[int]): int =
  s.b - (n - s.a)

func flipInRange[T: Ordinal](n: T, s: Slice[T]): T =
  T flipInRangeImpl(n.ord, s.a.ord .. s.b.ord)

func reversedAscii(ch: char): char =
  case ch:
  of 'a'..'z': flipInRange ch, 'a'..'z'
  of 'A'..'Z': flipInRange ch, 'A'..'Z'
  else: ch


# --- main
func atbash(word: string): string =
  for ch in word:
    result.add reversedAscii ch

# --- tests
test "flipInRange":
  check flipInRange(1, 1 .. 3) == 3
  check flipInRange(3, 1 .. 3) == 1
  check flipInRange(2, 1 .. 3) == 2

suite "reversedAscii":
  test "a .. z":
    check reversedAscii('a') == 'z'
    check reversedAscii('z') == 'a'
    check reversedAscii('d') == 'w'

  test "A .. Z":
    check reversedAscii('D') == 'W'

  test "not an alphabet":
    check reversedAscii('3') == '3'

suite "main":
  test "empty":
    check atbash("") == ""

  test "'hello'":
    check atbash("hello") == "svool"

  test "'Clojure'":
    check atbash("Clojure") == "Xolqfiv"

  test "'Yo!'":
    check atbash("Yo!") == "Bl!"

