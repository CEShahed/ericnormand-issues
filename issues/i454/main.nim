import std/[unittest]


# --- main
func applyBs(s: string): string =
  var acc = newSeqOfCap[char](s.len)

  for c in s:
    if c == '#':
      if acc.len > 0:
        discard acc.pop

    else:
      acc.add c

  cast[string](acc)

# --- tests
suite "Tests":
  test "abc#":
    check applyBs("abc#") == "ab"

  test "abc###":
    check applyBs("abc###") == ""

  test "###abc":
    check applyBs("###abc") == "abc"

  test "there###eir":
    check applyBs("there###eir") == "their"
