import std/[unittest, options, strutils, sequtils]


# helpers

func len(i: Natural): Positive =
  if i < 10: 1
  elif i < 100: 2
  elif i < 1000: 3
  elif i < 10000: 4
  elif i < 100000: 5
  elif i < 1000000: 6
  elif i < 10000000: 7
  elif i < 100000000: 8
  elif i < 1000000000: 9
  elif i < 10000000000: 10
  elif i < 100000000000: 11
  elif i < 1000000000000: 12
  elif i < 10000000000000: 13
  elif i < 100000000000000: 14
  elif i < 1000000000000000: 15
  else: 0

# --- main

func matchConsecutive(s: string, startIndex: int, expectNext: int): bool = 
  s[startIndex ..< (startIndex + len expectNext)].parseInt == expectNext

func consecImpl(digits: string): Option[Slice[int]] = # first..last
  for size in 1 .. digits.len div 2:
    let first = parseInt digits[0 ..< size] 
    var 
      n = first
      index = 0
    
    while true:
      if index == digits.len:
        return some first ..< n

      elif matchConsecutive(digits, index, n):
        inc index, len n
        inc n

      else: break

func consec(digits: string): Option[seq[int]] =
  if digits.len <= 1:
    raise newException(ValueError, "what?")

  elif (let ans = consecImpl digits; isSome ans):
    result = some toseq ans.get
  
# --- tests
suite "helpers":
  discard

suite "main":
  test "121314":
    check consec("121314") == some @[12, 13, 14]

  test "121315":
    check consec("121315").isNone

  test "444445":
    check consec("444445") == some @[444, 445]

  test "12":
    check consec("12") == some @[1, 2]

  test "1":
    doAssertRaises ValueError:
      discard consec("1") # throws error
