import std/[strutils, unittest]


# --- helpers
iterator sentences(s: string): string =
  var anchor = 0
  for i, ch in s:
    if ch in {'.', '!', '?'}:
      yield s[anchor..i]
      anchor = i+1

# --- main
func search(document, keyword: string): seq[string] =
  for sentence in document.sentences:
    if keyword.toLowerAscii in sentence.toLowerAscii:
      result.add sentence.strip

# --- tests
suite "tests":
  test "non":
    check search("This is my document.", "Hello").len == 0

  test "1":
    check search("This is my document. It has two sentences.", "sentences") ==
        @["It has two sentences."]

  test "2":
    check search("I like to write. Do you like to write?", "Write") == @[
        "I like to write.", "Do you like to write?"]
