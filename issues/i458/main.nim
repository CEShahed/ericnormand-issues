import std/[tables, unittest]


# --- main
func diff(a, b: string): char =
  let 
    ac = a.toCountTable # step 1
    bc = b.toCountTable # step 1

  for ch, repeats in bc: # step 2
    if repeats != ac[ch]: # step 3
      return ch
  

# --- tests
suite "tests":
  test "'' 'j'":
    check diff("", "j") == 'j'

  test "'a' 'ab'":
    check diff("a", "ab") == 'b'

  test "'abc' 'xcab'":
    check diff("abc", "xcab") == 'x'

  test "'xxyyzz' 'xzyfyxz'":
    check diff("xxyyzz", "xzyfyxz") == 'f'

  test "'cccvv' 'cvvcvc'":
    check diff("cccvv", "cvvcvc") == 'v'
