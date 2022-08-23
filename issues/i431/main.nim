import std/[unittest]

# --- main
const empty = -1

func clusters(s: string): seq[string] =
  var
    depth = empty
    anchor = 0

  for i, ch in s:
    case ch:
    of '(', '{', '[':
      if depth == empty:
        anchor = i

      inc depth

    of ')', '}', ']':
      dec depth

      if depth == empty:
        result.add s[anchor .. i]

    else: 
      raise newException(ValueError, "invalid char")


# --- tests
suite "main":
  test "empty":
    check clusters("").len == 0

  test "()":
    check clusters("()") == @["()"]

  test "(())":
    check clusters("(())") == @["(())"]

  test "()()()":
    check clusters("()()()") == @["()", "()", "()"]

  test "(()())()(())":
    check clusters("(()())()(())") == @["(()())", "()", "(())"]
