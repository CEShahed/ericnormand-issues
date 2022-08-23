# issue 430 - New Numbers :: [link](https://ericnormand.me/issues/purelyfunctional-tv-newsletter-430-use-keyword-notation-for-unique-values)

## Description

A number is *new* if its digits are not a permutation of a smaller number. For instance, `789` is a new number because its permutations (`879`, `798`, `897`, `978`, and `987`) are all larger than it is. However, `645` is not a new number since `456` and `465` are smaller than it.

Write a function that takes an integer and returns true if it is a new number and false otherwise.

### Examples

```clj
(new-number? 789) ;=> true
(new-number? 645) ;=> false
(new-number? 444) ;=> true (it's permutations are not smaller than it)
```

### Bonus
You may find a clever way to write new-number?. In addition to that implementation, implement it in such a way that the definition (no permutations are smaller) is clear from the code.

## Idea

### English


### Data Transformation - مراحل تغییر داده
```nim
```