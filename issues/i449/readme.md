# issue 449 - Phrase maximization :: [link](https://ericnormand.me/issues/purelyfunctional-tv-newsletter-449-domain-model-correctness-and-simplicity)

## Description

Imagine we have the following sentence.

> she sells sea shells by the sea shore

We want phrases that are as big as possible, yet no bigger than 10 characters long. A phrase must contain entire words and a space between them. And an instance of a word should only exist in the first phrase that matches.

We start at the beginning. "she sells" is \<= 10 characters. We can't add the following "sea" because "she sells sea" is 13 characters. That means "she sells" is a maximizing phrase. We now start at "sea" and continue.

Your job is to write a function that takes a sentence and outputs a collection of phrases.

### Examples
```clj
(phrases 10 "she sells sea shells by the sea shore")   ;=> ["she sells" "sea shells" "by the sea" "shore"]
(phrases 2 "she sells sea shells by the sea shore")    ;=> ["by"]
(phrases 2 "the big dog jumped over the fence")        ;=> []
(phrases 13 "she sells sea shells by the sea shore")   ;=> ["she sells sea" "shells by the" "sea shore"]
```


### Notes
- Trim initial and trailing whitespace, but leave whitespace between words.
- The spaces count in the length of the phrases.

## Idea

### English


### Data Transformation - مراحل تغییر داده
```nim
```