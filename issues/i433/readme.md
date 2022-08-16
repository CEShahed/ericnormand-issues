# issue 433 - Vowel families :: [link](https://ericnormand.me/issues/purelyfunctional-tv-newsletter-433-the-clojure-effect)

## Description

Given two words, we can determine if they have the same vowels, ignoring order and repetition. For instance, "Hello" and "Vowel" both have `e` and `o`, so they have the same vowels. Write a function that groups words into *families* that all have the same vowels. `Tree` and `tent` also belong to the same family because we ignore the repetition of `e`.

### Examples
```clj
(vowel-families ["hello" "vowel" "fox" "cot" "hat" "cat"]) ;=> [["hello"
"vowel"]
                                                           ;    ["fox" "cot"]
                                                           ;    ["hat"
"cat"]]
(vowel-families []) ;=> []
(vowel-families ["tree" "tent" "blanket"] ;=> [["tree" "tent"]
                                          ;    ["blanket"]]
```

### Notes
For this exercise, the vowels are `a`, `e`, `i`, `o`, and `u`. If you wish, you may include vowels from other languages and scripts. Your algorithm should not be case-sensitive.

Please maintain capitalization and non-alphabetic characters.

## Idea

### English

### فارسی


### Data Transformation - مراحل تغییر داده
```nim
```