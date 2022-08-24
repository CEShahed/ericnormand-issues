import std/[unittest, nre, strutils, sugar]


# --- main
func d2b(sentence: string): string =
  sentence.replace re"\d+", (match: string) => match
    .parseInt
    .toBin(64)
    .strip(true, false, {'0'})


# --- tests
suite "main":
  test "I have 2 arms.":
    check d2b("I have 2 arms.") == "I have 10 arms."

  test "That costs 3 dollars. But I only have 1 dollar.":
    check d2b("That costs 3 dollars. But I only have 1 dollar.") == "That costs 11 dollars. But I only have 1 dollar."

  test "I was born in 1981.":
    check d2b("I was born in 1981.") == "I was born in 11110111101."
