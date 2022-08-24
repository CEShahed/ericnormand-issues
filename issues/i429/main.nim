import std/[unittest, sequtils]


# --- helpers
func display(sentence: string, view: Slice[int]): string =
  result = newStringOfCap view.len

  for i in view:
    result.add:
      if i in 0 .. sentence.high: sentence[i]
      else: ' '

# --- main
iterator scroll(sentence: string, width: int): string =
  for padding in countdown(width, -sentence.len):
    yield sentence.display (-padding ..< -padding+width)

func scroller(sentence: string, width: int): seq[string] =
  toseq scroll(sentence, width)

# --- tests
suite "helpers":
  test "display":
    check:
      display("hello", 0 .. 4) == "hello"
      display("hello", -2 .. 3) == "  hell"
      display("hello", 2 .. 6) == "llo  "

suite "main":
  test "10":
    check scroller("HEADLINE", 10) == @[
      "          ",
      "         H",
      "        HE",
      "       HEA",
      "      HEAD",
      "     HEADL",
      "    HEADLI",
      "   HEADLIN",
      "  HEADLINE",
      " HEADLINE ",
      "HEADLINE  ",
      "EADLINE   ",
      "ADLINE    ",
      "DLINE     ",
      "LINE      ",
      "INE       ",
      "NE        ",
      "E         ",
      "          "]
