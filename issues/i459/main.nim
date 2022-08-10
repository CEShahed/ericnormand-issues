import std/[strutils, options, math, unittest]


type CypherMode = enum
  cmDecode = -1
  cmEncode = +1

const
  upperCase = 'A' .. 'Z'
  length = upperCase.b.ord - upperCase.a.ord


# --- helpers
func positiveMod(a, b: int): Natural =
  if a.sgn == b.sgn:
    abs a mod b
  else:
    -(a.abs mod b.abs) + b.abs

func pos(ch: char): int =
  ## return relative position of character `ch` with respect to 'A'
  ch.ord - upperCase.a.ord

func shiftChar(ch: char, by: int): char =
  ## shifts the uppercase character `ch` by `by`
  char upperCase.a.ord + positiveMod(ch.pos + by, length + 1)

# --- main
func cipher(s: string, mode: static[CypherMode]): string =
  var lastChar = none char

  for ch in s.toUpperAscii: # step 1
    if ch in Letters:
      result.add: # step 2
        if isNone lastChar: ch
        else: shiftChar(ch, mode.int * (lastChar.get.pos + 1))

      lastChar = some: # step 3
        when mode == cmEncode: ch
        else: result[^1]

    else:
      result.add ch

func encode(s: string): string =
  cipher s, cmEncode

func decode(s: string): string =
  cipher s, cmDecode


# --- Tests
suite "helpers":
  test "positiveMod":
    check positiveMod(-13, 6) == 5
    check positiveMod(13, 6) == 1

  test "pos":
    check pos('B') == 1
    check pos('A') == 0
    check pos('Z') == 25

  test "shiftChar":
    check shiftChar('A', +2) == 'C'
    check shiftChar('Z', +2) == 'B'
    check shiftChar('A', -2) == 'Y'
    check shiftChar('Z', -2) == 'X'

suite "encode":
  test "'empty'":
    check encode("") == ""

  test "'a'":
    check encode("a") == "A"

  test "'hello'":
    check encode("hello") == "HMQXA"

  test "'newsletter'":
    check encode("newsletter") == "NSBPEQYNYW"

  test "'1 hug'":
    check encode("1 hug") == "1 HCB"

suite "decode":
  test "'empty'":
    check decode("") == ""

  test "'1'":
    check decode("1") == "1"

  test "'HMQXA'":
    check decode("HMQXA") == "HELLO"
