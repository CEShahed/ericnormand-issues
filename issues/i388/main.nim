import std/[unittest, strutils]


# --- main
func titleCase(sentence: string): string =
  const minors = [
    "and", "as", "but", "for", "if", "nor", "or",
    "so", "yet", "a", "an", "the", "as", "at", "by",
    "for", "in", "of", "off", "on", "per", "to", "up", "via"]

  var acc: seq[string]

  for word in sentence.split:
    acc.add:
      if (acc.len == 0) or (word notin minors):
        capitalizeAscii word

      else:
        word

  acc.join " "

# --- tests
suite "main":
  test "the hobbit":
    check titleCase("the hobbit") == "The Hobbit"

  test "the fellowship of the ring":
    check titleCase("the fellowship of the ring") == "The Fellowship of the Ring"

  test "the two towers":
    check titleCase("the two towers") == "The Two Towers"

  test "the return of the king":
    check titleCase("the return of the king") == "The Return of the King"

