# issue 448 - Reverse Polish Calculator :: [link](https://ericnormand.me/issues/purelyfunctional-tv-newsletter-448-domain-model-convenience)

## Description

Reverse-Polish notation is a way to write mathematical expressions where the operator appears after the operands. For example:

```
1 2 +      => 1 + 2 = 3
```
In traditional parenthetical notation, that is equivalent to `(1 + 2)` and in Lisp `(+ 1 2)`. If we assume there are four binary arithmetic operators (`+`, `-`, `*`, and `/`), we can write arbitrarily complex expressions with no need for parentheses.

### Examples
```
1 2 + 3 +   => (1 + 2) + 3 = 6
4 2 * 2 2 + + 8 / => ((4 * 2) + (2 + 2)) / 8 = 2
```
Your job is to take a string of numbers and operators (all separated by spaces), parse them, and calculate the answer.

### Examples
```clj
(rpol "1") ;=> 1
(rpol "1 2 +") ;=> 3
(rpol "1 2 + 3 +") ;=> 6
(rpol "4 2 * 2 2 + + 8 /") ;=> 2
```

### Notes
- All operations are binary.
- There are some cases where there aren't enough arguments. You should throw an exception.
- There are some cases where there are too many arguments. Return the result of the last operation performed.

### Hints
- Use a stack.

## Idea

### English

### فارسی


### Data Transformation - مراحل تغییر داده
```nim
```