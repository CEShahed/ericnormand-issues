import std/[strutils, algorithm, unittest]


func reverseWords(s: string): string =
  s
  .split(" ") # step 1
  .reversed # step 2
  .join " " # step 3

suite "tests":
  test "my name is Eric.":
    ## Correction on examples https://gist.github.com/ericnormand/66a3ddaafc7c61dcb0a857aa88239142?permalink_comment_id=4182886#gistcomment-4182886
    check reverseWords("my name is Eric.") == "Eric. is name my"

  test "hello":
    check reverseWords("hello") == "hello"

  test "I love you":
    check reverseWords("I love you") == "you love I"
