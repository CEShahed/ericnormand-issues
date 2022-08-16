import std/[sequtils, strutils, unittest]


# --- main
func allPresent(bigrams: seq[string], sentence: string): bool =
  bigrams.allIt it in sentence

# --- tests
suite "Tests":
  test "street": 
    check allPresent(@["st", "tr"], "street") == true

  test "eating at a restaurant": 
    check allPresent(@["ea", "ng", "kt"], "eating at a restaurant") == false

  test "hello!": 
    check allPresent(@[], "hello!") == true
