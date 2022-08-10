# English

A harder one for this week.

Fractions are often represented in simplified form, where the numerator and denominator share only the factor 1. 

Write a function simplify that takes two integers (representing the numerator and denominator) and simplifies the fraction they represent, returning the two numbers.

### Examples
```clj
;; the fraction 10/10
(simplify 10 10) ;=> [1 1]
;; the fraction 1/3
(simplify 1 3) ;=> [1 3]
(simplify 2 4) ;=> [1 2]
(simplify 100 40) ;=> [5 2]
```
