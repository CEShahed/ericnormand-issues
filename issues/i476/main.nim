import std/[unittest]


# --- helpers

func nextPowerOf10(n: Natural): int =
  if n < 10: 10
  elif n < 100: 100
  elif n < 1000: 1000
  elif n < 10000: 10000
  elif n < 100000: 100000
  elif n < 1000000: 1000000
  elif n < 10000000: 10000000
  elif n < 100000000: 100000000
  else: 1000000000

func digits(n: Natural): int =
  if n < 10: 1
  elif n < 100: 2
  elif n < 1000: 3
  elif n < 10000: 4
  elif n < 100000: 5
  elif n < 1000000: 6
  elif n < 10000000: 7
  elif n < 100000000: 8
  else: 9

# --- main

func numDigitsImpl(slice: Slice[int]): int =
  var cur = slice.a

  while cur <= slice.b:
    let
      highOf10Bound = (nextPowerOf10 cur) - 1
      bound = cur..min(highOf10Bound, slice.b)

    result.inc len(bound) * digits highOf10Bound
    cur = highOf10Bound+1

func numDigits(a, b: int): int =
  numDigitsImpl (a+1) .. (b-1)

# --- tests
suite "helpers":
  test "nextPowerOf10":
    check nextPowerOf10(3) == 10
    check nextPowerOf10(9) == 10
    check nextPowerOf10(10) == 100
    check nextPowerOf10(751) == 1000

  test "digits":
    check digits(0) == 1
    check digits(9) == 1
    check digits(31894) == 5
    check digits(100) == 3

suite "main":
  test "0 1": # 1 .. 0
    check numDigits(0, 1) == 0 # (there are no integers between 0 and 1)

  test "0 10": # 1 .. 9
    check numDigits(0, 10) == 9 # (1, 2, 3, 4, 5, 6, 7, 8, 9)

  test "9 100": # 10 .. 99
    check numDigits(9, 100) == 180

  test "0, 10":
    check numDigits(0, 10) == 9

  test "9, 100":
    check numDigits(9, 100) == 180

  test "99, 1000":
    check numDigits(99, 1000) == 2700

  test "111, 9999999":
    check numDigits(111, 9999998) == 68888650
