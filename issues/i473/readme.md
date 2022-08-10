# issue 473 :: [link](https://ericnormand.me/issues/473)

## Description

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


## Idea

### English

simply give the GCD (greatest common divisor) of given numbers, 
then divide given numbers by that.

that's it!

### فارسی

راه حل به این صورت است که از دو عدد داده شده ب.م.م میگیریم،
سپس آن دو عدد را بر ب.م.م بدست آمده تقسیم میکنیم

همین!