import std/[strutils, unittest]


func chunk(sentence: string, every: int): seq[string] =
  for i in countup(0, sentence.high, every):
    result.add sentence[i ..< i+every]

func regroup(licence: string, chunkSize: int): string =
  let
    letters = licence.replace("-", "")
    reminder = letters.len mod chunkSize
    firstPartSize =
      if reminder == 0: chunkSize
      else: reminder

  (
    letters[0..<firstPartSize] &
    letters[firstPartSize..^1].chunk(chunkSize)
  )
  .join "-"


suite "helpers":
  test "every":
    check "123456789".chunk(3) == @["123", "456", "789"]

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

