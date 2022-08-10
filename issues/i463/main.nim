import std/[unittest]

# --- main
func found(needle, haystack: string): bool =
  if needle == "": true
  else:
    var i = 0 # index counter for `needle`

    for ch in haystack:
      if ch == ' ':
        reset i

      elif ch == needle[i]:
        inc i

        if i == needle.len:
          return true

    false

# --- tests
suite "tests":
  test "'abc' 'dddabcfff'":
    check found("abc", "dddabcfff") == true # (direct match)

  test "'abc' 'xyzannbffooc'":
    check found("abc", "xyzannbffooc") == true # (add missing "nn" and "ffoo")

  test "'abc' 'a bc'":
    check found("abc", "a bc") == false # (don't match across whitespace)

  test "'xxx' 'cxccx'":
    check found("xxx", "cxccx") == false # (not enough x's)

  test "'' ''":
    check found("", "") == true # (trivially so)

  test "'' 'aaa'":
    check found("", "aaa") == true # (also trivial)
