import std/[options, unittest]

type SingleCharSwap = Slice[char]

# --- helpers
func swapped(s: string, i, j: int): string =
  result = s
  swap result[i], result[j]

func mismatchIndexes(word: string, origin: string): seq[int] =
  for i, ch in word:
    if ch != origin[i]:
      result.add i

# --- main
func swapToMatch(word, origin: string): Option[SingleCharSwap] =
  if word.len == origin.len: # step 2
    let mmix = mismatchIndexes(word, origin) # step 3

    if (mmix.len == 2) and (word.swapped(mmix[0], mmix[1]) == origin): # step 4
      result = some word[mmix[1]] .. word[mmix[0]] # step 5

func letterSwaps(words: seq[string], originalWord: string): seq[Option[SingleCharSwap]] =
  for w in words: # step 1
    result.add swapToMatch(w, originalWord)


suite "tests":
  let no = none SingleCharSwap

  test "full":
    check letterSwaps(
      @["bacd", "abdc", "abcde", "abcc", "abcd"], "abcd") ==
      [some 'a'..'b', some 'c'..'d', no, no, no]
