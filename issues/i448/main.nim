import std/[strutils, unittest]


# --- main
func rpol(reversePolishExpr: string): int =
  var numbersStack: seq[int]

  template op(fn): untyped =
    assert numbersStack.len >= 2, "there are not enough operands"

    let 
      front = numbersStack.pop
      back = numbersStack.pop

    numbersStack.add fn(back, front)

  for token in reversePolishExpr.split:
    case token:
    of "+": op `+`
    of "-": op `-`
    of "*": op `*`
    of "/": op `div`
    else:
      numbersStack.add parseInt token

  numbersStack[^1]


# --- tests
suite "Tests":
  test "1": 
    check rpol("1") == 1
    
  test "1 2 +": 
    check rpol("1 2 +") == 3
    
  test "1 2 + 3 +": 
    check rpol("1 2 + 3 +") == 6
    
  test "4 2 * 2 2 + + 8 /": 
    check rpol("4 2 * 2 2 + + 8 /") == 2