import std/[tables, sequtils, unittest]


# --- main
func oddOne(words: openArray[string]): bool =
  let wordsLen = 
    words
    .mapIt(it.len) # step 1
    .toCountTable # step 2
  
  (wordsLen.len == 2) and # step 3
  (1 in wordsLen.values.toseq) # step 4

# --- tests
suite "Tests":
  test "a b c":
    check oddOne(["a", "b", "c"]) == false

  test "a b cc":
    check oddOne(["a", "b", "cc"]) == true

  test "abc aa xyz jj":
    check oddOne(["abc", "aa", "xyz", "jj"]) == false

