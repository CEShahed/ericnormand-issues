import std/[unittest, sequtils]


# --- main
iterator collatzImpl(n: int): int =
  var t = n

  while true:
    yield t

    t =
      if t == 1: break
      elif t mod 2 == 0: t div 2
      else: t*3 + 1


func collatz(n: int): seq[int] =
  toseq collatzImpl n

# --- tests

suite "main":
  test "1":
    check collatz(1) == @[1]

  test "2":
    check collatz(2) == @[2, 1]

  test "3":
    check collatz(3) == @[3, 10, 5, 16, 8, 4, 2, 1]
