# issue 418 - Index map :: [link](https://ericnormand.me/issues/purelyfunctional-tv-newsletter-418-clojures-buzz)

## Description

A vector can be seen as a mapping of index to value. However, we want a mapping from value to indexes. Write a function that takes a sequence and returns a map where the elements of the sequence are the keys and the values are sets of the indexes where the value is found.

### Examples
```clj
(index-map []) ;=> {}
(index-map [1 2 3]) ;=> {1 #{0} 2 #{1} 3 #{2}}
(index-map [1 1 1]) ;=> {1 #{0 1 2}}
(index-map [1 2 1 2 1]) ;=> {1 #{0 2 4} 2 #{1 3}}
```

**Bonus:** 
Write the inverse function that takes one of the returned maps and turns it into a sequence.

## Idea

### English

### Data Transformation - مراحل تغییر داده
```nim
```