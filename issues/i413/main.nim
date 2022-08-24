import std/[unittest]

# --- helpers
func reversed(s: string): string =
  result = newString s.len
  for i, ch in s:
    result[^(i+1)] = ch

func mirror(s: string): int =
  var
    anchor = -1
    head = 0
    tail = 0

  template resetStates: untyped =
    head = anchor + 1
    tail = s.high
    result = 0
    inc anchor

  resetStates

  while true:
    if head == s.len: return

    elif s[head] == s[tail]:
      inc head
      dec tail
      inc result

    else: resetStates

# --- main
func toPalindrome(s: string): string =
  let l = s.mirror
  s & reversed s[0 .. s.len - l - 1]

# --- tests
suite "helpers":
  test "mirror":
    check:
      mirror("a") == 1 # a
      mirror("ab") == 1 # b
      mirror("aba") == 3 # aba
      mirror("mirror") == 3 # ror


suite "main":
  test "race":
    check toPalindrome("race") == "racecar"

  test "mad":
    check toPalindrome("mad") == "madam"

  test "mirror":
    check toPalindrome("mirror") == "mirrorrim"
