import std/[tables, options, unittest]


# --- helpers
func normalize(rythme: string): string =
  var
    lastIndex: Table[char, char]
    nextChar = 'A'

  for i, ch in rythme:
    if ch in lastIndex:
      result.add lastIndex[ch]

    else:
      lastIndex[ch] = nextChar
      result.add nextChar
      inc nextChar

func genConvTable(rythme1, rythme2: string): Table[char, char] =
  for i in 0 .. rythme1.high:
    let
      l1 = rythme1[i]
      l2 = rythme2[i]

    if l1 != l2:
      result[l1] = l2

# --- main
func equiv(rythme1, rythme2: string): Option[Table[char, char]] =
  if rythme1.len == rythme2.len: # step 1
    let
      rn1 = normalize rythme1 # step 2
      rn2 = normalize rythme2 # step 2

    if rn1 == rn2: # step 3
      result = some genConvTable(rythme1, rythme2) # step 4


# --- tests
suite "helpers":
  test "normalize":
    check normalize("XALA") == "ABCB"
    check normalize("XXY") == "AAB"

suite "tests":
  test "'ABCB' 'XALA'":
    check equiv("ABCB", "XALA") == some toTable {'A': 'X', 'B': 'A', 'C': 'L'}

  test "'A' 'A'":
    check equiv("A", "A") == some initTable[char, char]()

  test "'A' 'B'":
    check equiv("A", "B") == some toTable {'A': 'B'}

  test "'AB' 'A'":
    check isNone equiv("AB", "A")

  test "'ABB' 'XXY'":
    check isNone equiv("ABB", "XXY")
