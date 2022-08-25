import std/[unittest]

# --- main
func completes(minor, major: string): bool =
  if minor.len <= major.len:
    var mni, mji = 0

    while mni != minor.len: # step 2
      if mji == major.len:
        return false # step 3

      if minor[mni] == major[mji]: # step 1.1
        inc mni
        inc mji 

      else: # step 1.2
        inc mji 

    true # step 2

  else:
    false

# --- tests
suite "tests":
  test "'a' 'autocomplete'":
    check completes("a", "autocomplete") == true

  test "'atc' 'autocomplete'":
    check completes("atc", "autocomplete") == true

  test "'hello' 'hello'":
    check completes("hello", "hello") == true

  test "'ll' 'hello'":
    check completes("ll", "hello") == true

  test "'llh' 'hello'":
    check completes("llh", "hello") == false
