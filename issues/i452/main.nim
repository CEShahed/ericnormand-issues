import std/[sequtils, algorithm, options, unittest]


# --- main
func consec(s: seq[int]): Option[seq[int]] =
  let ss = s.deduplicate.sorted # step 1
  
  if ss.len == s.len: # step 2
    for i in 1 .. ss.high: # step 3
      if ss[i] - ss[i-1] != 1: # step 4
        return

    result = some ss

# --- tests
suite "tests":
  test "[]":
    check consec(@[]).get.len == 0 # trivially true

  test "[1]":
    check consec(@[1]) == some @[1] # ditto

  test "[3 1 2]":
    check consec(@[3, 1, 2]) == some @[1, 2, 3]

  test "[5 3 2 1]":
    check isNone consec(@[5, 3, 2, 1]) # non-consecutive (4 is missing)

  test "[7 8 9 7]":
    check isNone consec(@[7, 8, 9, 7]) # 7 repeats
