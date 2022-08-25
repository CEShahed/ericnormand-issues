import std/[tables, sequtils, unittest]


# --- helpers
type
  Vowel = enum
    o, a, i, u, e

  SeqTable[K, V] = Table[K, seq[V]]

func incl[K, V](t: var SeqTable[K, V], key: K, value: V) =
  t.withValue key, wrapper:
    wrapper[].add value
  do:
    t[key] = @[value]


func vowels(word: string): set[Vowel] =
  for ch in word:
    result.incl:
      case ch:
      of 'o', 'O': o
      of 'a', 'A': a
      of 'u', 'U': u
      of 'e', 'E': e
      of 'i', 'I': i
      else: continue

# --- main
func vowelFamilies(words: seq[string]): seq[seq[string]] =
  var vowelsLookup: SeqTable[set[Vowel], string]

  for w in words:
    vowelsLookup.incl vowels w, w

  toseq vowelsLookup.values

# --- tests
suite "helpers":
  discard

suite "tests":
  test "empty":
    check vowelFamilies(@[]).len == 0

  test "1":
    check vowelFamilies(@["hello", "vowel", "fox", "cot", "hat", "cat"]) == @[@[
        "hello", "vowel"], @["fox", "cot"], @["hat", "cat"]]

  test "2":
    check vowelFamilies(@["tree", "tent", "blanket"]) == @[@["tree", "tent"], @["blanket"]]
