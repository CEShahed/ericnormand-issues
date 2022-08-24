# issue 426 - Collatz sequence :: [link](https://ericnormand.me/issues/purelyfunctional-tv-newsletter-426-ring-for-crud)

## Description

A Collatz sequence for a positive integer `n` is defined by repeatedly applying the following rules:

- If `n` is **even**, divide by `2`.
- If `n` is **odd**, multiply by `3` and add `1`.
- The sequence **ends** when `n = 1`.

Write a function that generates a lazy Collatz sequence given a number.

### Examples
```clj
(collatz 1) ;=> (1)
(collatz 2) ;=> (2 1)
(collatz 3) ;=> (3 10 5 16 8 4 2 1)
```

## Idea

### English


### Data Transformation - مراحل تغییر داده
```nim
```