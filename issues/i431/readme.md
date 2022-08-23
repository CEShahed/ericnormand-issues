# issue 431 - Balanced Paren Clusters :: [link](https://ericnormand.me/issues/purelyfunctional-tv-newsletter-431-clojure-directness)

## Description

Given a string of balanced parentheses, split it up into top-level "clusters".

### Examples
```clj
(clusters "") ;=> []
(clusters "()") ;=> ["()"]
(clusters "(())") ;=> ["(())"]
(clusters "()()()") ;=> ["()" "()" "()"]
(clusters "(()())()(())") ;=> ["(()())" "()" "(())"]
```

### Notes:
- You can assume the strings will only contain `(` and `)` and will be fully balanced.

### Bonuses
- Handle unbalanced parens with a nice error message showing the relevant positions.
- Handle other braces, such as `{}` and `[]`.

## Idea

### English


### Data Transformation - مراحل تغییر داده
```nim
```