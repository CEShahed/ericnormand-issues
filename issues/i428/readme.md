# issue 428 - Formatted prime factorization :: [link](https://ericnormand.me/issues/purelyfunctional-tv-newsletter-428-crud-paging)

## Description

Prime factorization means representing an integer as a product of primes. A function that factorizes a number will return a vector of primes, like so: `[2 2 3 5]`. Your job is to take such a vector and create a nice string that shows the **mathematical notation of the product**.

### Examples
```clj
(format-product [2 2 3 5]) ;=> "2^2 x 3 x 5"
(format-product [2 3 3 3 11 11]) ;=> "2 x 3^2 x 11^2"
(format-product [7]) ;=> "7"
```

Use `x` to indicate *multiplication* and `^` to indicate *exponentiation*.

## Idea

### English

### Data Transformation - مراحل تغییر داده
```nim
```