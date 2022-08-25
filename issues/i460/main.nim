import std/[strutils, unittest]


# --- helpers
func rebuildWord(p: string): tuple[position: int, word: string] =
  var numberAcc: string

  for ch in p:
    case ch:
    of '0'..'9': numberAcc.add ch
    else: result.word.add ch

  result.position = parseInt numberAcc

# --- main
func rearrange(sentence: string): string =
  if sentence.len == 0: ""
  else:
    let parts = sentence.split(' ') # step 1
    var newSentence = newSeq[string](parts.len) # step 2

    for p in parts:
      let (position, word) = rebuildWord p # step 3
      newSentence[position-1] = word # step 4

    newSentence.join " " # step 5

# --- tests
suite "tests":
  test "World2! He1llo,":
    check rearrange("World2! He1llo,") == "Hello, World!"

  test "fo3r 5more Elegan1t 2weapons age.7 civil6ized a4":
    check rearrange("fo3r 5more Elegan1t 2weapons age.7 civil6ized a4") == "Elegant weapons for a more civilized age."

  test "empty":
    check rearrange("") == ""
    