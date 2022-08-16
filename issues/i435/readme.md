# issue 435 - Longest Delimited Substring :: [link](https://ericnormand.me/issues/purelyfunctional-tv-newsletter-435-the-software-crisis)

## Description

A delimited string is a string that starts with a character, ends with the same character, and doesn't contain the character anywhere else (besides the beginning and end). Here are some examples:

- `abbbbbbba` is delimited because it starts and ends with `a`.
- `ajjjjaffa` is not delimited because, though it starts and ends with `a`, it also contains `a` inside.
- `bkfifoifu` is not delimited because it doesn't end with the same character it starts with.
- `aa` is delimited.
- `aufodiufa` is delimited.

Your task is to write a function that returns the longest delimited substring of a given string.

### Examples:
```clj
(delimited "ffdsfuiofl") ;=> "fuiof"
(delimited "abbcdefg") ;=> "bb"
(delimited "opoiifdopf") ;=> "poiifdop"
```

In the case of ties, return the substring that appears first.

## Idea

### English

### فارسی


### Data Transformation - مراحل تغییر داده
```nim
```