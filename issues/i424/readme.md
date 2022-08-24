# issue 424 - Sock pairs :: [link](https://ericnormand.me/issues/purelyfunctional-tv-newsletter-424-leverage-in-a-thriving-ecosystem)

## Description

After doing laundry, your socks are unmatched to their pairs. You need to match them!

Write a function that takes a collection of values and makes pairs if they are equal. If there is not a match for a particular value, return it as well.

```clj
(pair-match []) ;=> {:pairs [] :unmatched []}
(pair-match [1 2 1]) ;=> {:pairs [[1 1]] :unmatched [2]}
(pair-match [1 2 3 1 2 3 1 1 2]) ;=> {:pairs [[1 1] [2 2] [3 3] [1 1]]
                                 ;=>  :unmatched [2]}
```

**Note:** 
It's like socks. If you have 3 blue socks, that's one pair and one unmatched. If you have 4 blue socks, that's two pairs.


## Idea

### English

### فارسی


### Data Transformation - مراحل تغییر داده
```nim
```