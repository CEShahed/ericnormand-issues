import std/[unittest]

# --- helper
func len(r: Slice[int]): int = r.b - r.a
func `<`(r1, r2: Slice[int]): bool = r1.len < r2.len

# --- main
func delimited(sentence: string): string =
  var chains: seq[Slice[int]]

  for i, ch in sentence:
    for j in i+1 .. sentence.high-1:
      if ch == sentence[j]:
        chains.add i..j
        break

  sentence[chains.max]
  

# --- tests
suite "test":
  test "ffdsfuiofl":
    check delimited("ffdsfuiofl") == "fuiof"

  test "abbcdefg":
    check delimited("abbcdefg") == "bb"

  test "opoiifdopf":
    check delimited("opoiifdopf") == "poiifdop"
