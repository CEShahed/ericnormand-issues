import std/[strutils, unittest]


func chunk(sentence: string, every: int): seq[string] =
  ## chunks the `sentence` into parts with len of `every`
  for i in countup(0, sentence.high, every):
    result.add sentence[i ..< i+every]

func modCeil(a, b: int): int =
  # like normal `mod` operator but the result 0 is replaced with divisor
  let r = a mod b
  if r == 0: b
  else: r

func regroup(licence: string, chunkSize: int): string =
  let
    letters = licence.replace("-", "") # step 1
    firstPartSize = modCeil(letters.len, chunkSize)  # step 2
  
  (
    letters[0..<firstPartSize] &
    letters[firstPartSize..^1].chunk(chunkSize)
  ) # step 3
  .join "-" # step 4


suite "helpers":
  test "every":
    check "123456789".chunk(3) == @["123", "456", "789"]

  test "modCeil":
    check modCeil(6, 3) == 3
    check modCeil(6, 4) == 2

suite "problem":
  test "A5-GG-B88 :: 3":
    check regroup("A5-GG-B88", 3) == "A-5GG-B88"

  test "A5-GG-B88 :: 2":
    check regroup("A5-GG-B88", 2) == "A-5G-GB-88"

  test "6776 :: 2":
    check regroup("6776", 2) == "67-76"

  test "F33 :: 1":
    check regroup("F33", 1) == "F-3-3"

  test "IIO :: 7":
    check regroup("IIO", 7) == "IIO"

