# issue 461 - Primes in a number :: [link](https://ericnormand.me/issues/purelyfunctional-tv-newsletter-461-rules-of-thumb-dont-scale)

## Description

Another contrived math problem. This one I think is actually pretty hard. 
It's got detecting primes, string manipulation, and combinations.

Your task is to write a function that takes an integer and finds all primes that are substrings of the decimal digits of that integer.

### Examples
```clj
(find-primes 2) ;=> [2]
(find-primes 22) ;=> [2 2]
(find-primes 717) ;=> [7 7 17 71]
(find-primes 1) ;=> []
(find-primes 44) ;=> []
```

### Notes:
- Return the primes in ascending order.
- If a prime appears more than once, it should be in the returned sequence that many times.


## Idea

### English
1. first of all we convert the input number to string
2. then we make desired slices
3. then convert them to number again
4. then filter the primes
5. sort

### فارسی
**مرحله 1**:
اول از همه عدد ورودی به رشته تبدیل میکنیم

**مرحله 2**:
بعد تکه های مورد نظر رو از رشته بدست میاریم

**مرحله 3**:
بعد اون تکه هارو به عدد تبدیل میکنیم

**مرحله 4**:
اعداد بدست اومده رو فیلتر میکنین 
( اونایی که اول هستن باقی میونن)

**مرحله 5**:
دنباله نتیحه رو مرتب میکنیم

### Data Transformation - مراحل تغییر داده
```nim
717 # <-- input
"717" # <-- step 1
@["7", "71", "717", "17", "7"] # <-- step 2
@[7, 71, 717, 17, 7] # <-- step 3
@[7, 71, 17, 7] # <-- step 4
@[7, 7, 17, 71] # <-- step 5
```