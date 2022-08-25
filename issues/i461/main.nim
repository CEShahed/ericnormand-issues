import std/[strutils, algorithm, unittest]


# --- helpers
func isPrime(n: int): bool =
  if n < 2: false
  else:
    for i in 2 .. (n div 2):
      if n mod i == 0:
        return false
    true

iterator slices(s: string): string = 
  for i in 0 .. s.high:
    for j in i .. s.high:
      yield s[i .. j]

# --- main
func findPrimes(number: int): seq[int] =
  for s in slices $number: # step 1 & 2
    let n = parseInt s # step 3
    if isPrime n: # step 4
      result.add n # still step 4

  sort result # step 5

# --- tests
suite "tests":
  test "2":
    check findPrimes(2) == @[2]

  test "22":
    check findPrimes(22) == @[2, 2]

  test "717":
    check findPrimes(717) == @[7, 7, 17, 71]

  test "1":
    check findPrimes(1).len == 0

  test "44":
    check findPrimes(44).len == 0
