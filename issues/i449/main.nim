import std/[strutils, math, sequtils, unittest]

# --- helpers
func joinLen(s: seq[string], by: string = " "): int =
  (by.len * (s.len - 1)) + s.mapit(it.len).sum()

# --- main
func phrases(size: Positive, sentence: string): seq[string] =
  var acc: seq[string]

  template final: untyped =
    if acc.joinLen in 1..size:
      result.add acc.join " "
      reset acc


  for word in sentence.split:
    acc.add word

    if acc.joinLen > size:
      discard acc.pop

      final

      if word.len <= size:
        acc.add word

  final


# --- tests
suite "helpers":
  test "joinLen":
    check:
      joinLen(@["hey", "my", "name", "is", "hamid"], " ") == len "hey my name is hamid"
      joinLen(@["12", "3", "44", "55", "6"], "++") == len "12++3++44++55++6"

suite "tests":
  test "10":
    check phrases(10, "she sells sea shells by the sea shore") == @["she sells",
        "sea shells", "by the sea", "shore"]

  test "2":
    check phrases(2, "she sells sea shells by the sea shore") == @["by"]

  test "2":
    check phrases(2, "the big dog jumped over the fence").len == 0

  test "13":
    check phrases(13, "she sells sea shells by the sea shore") == @[
        "she sells sea", "shells by the", "sea shore"]
