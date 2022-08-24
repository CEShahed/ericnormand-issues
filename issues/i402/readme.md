# issue 402 - Most frequent element :: [link](https://ericnormand.me/issues/purelyfunctional-tv-newsletter-402-up-front-vs-incremental-design)

## Description

Write a function that takes a collection and returns the most frequent element. 
But here's the thing: you can't use the built-in function `clojure.core/frequencies`. 
And if there are ties, just pick one.

### Examples
```clj
(most-frequent [2 2 3 4 4 2 1 1 3 2]) ;=> 2
(most-frequent []) ;=> nil
(most-frequent [1 1 4 4 5]) ;=> 4
```

### Notes
- return nil for an empty collection
- in the case of a tie, return one of the winners

## Idea

### English


### Data Transformation - مراحل تغییر داده
```nim
```