# issue 434 - Sentence searcher :: [link](https://ericnormand.me/issues/purelyfunctional-tv-newsletter-434-re-combination-of-parts)

## Description

Sometimes I want to find a word in a document, but I want the context for the word. Write a function that takes a document and a word and returns the sentences that contain that word. The sentences should be returned in the order they appear in the document.

### Examples
```clj
(search "This is my document." "Hello") ;=> nil
(search "This is my document. It has two sentences." "sentences") ;=> ["It has two sentences."]
(search "I like to write. Do you like to write?" "Write") ;=> ["I like to write." "Do you like to write?"]
```

### Notes:
- Sentences end with `.`, `!`, or `?`.
- The search should be case insensitive.
- Return nil if the word is not found.

## Idea

### English

### فارسی


### Data Transformation - مراحل تغییر داده
```nim
```