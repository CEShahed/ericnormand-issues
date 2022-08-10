# issue 456 - Rhyming scheme equivalence :: [link](https://ericnormand.me/issues/purelyfunctional-tv-newsletter-456-a-sense-of-mystery)

## Description

| poem             | letter |
| ---------------- | ------ |
| Roses are red    | A      |
| Violets are blue | B      |
| Sugar is sweet   | C      |
| And so are you   | B      |


English teachers like to represent the rhyming pattern of poems with letters. Each line rhymes with lines with the same letter. 
In this case, B lines rhyme together, but the A and C lines don't rhyme. We will call that a `ABCB` rhyming scheme. 
However, the choice of letters is arbitrary. We could have called it `IBPB` or `XALA`.

We want a way to know if two rhyming schemes are equivalent. 
Write a function that returns nil if they are not equivalent and returns a map of replacements if they are equivalent.

### Examples
```clj
(equiv? "ABCB" "XALA") ;=> {\A \X \B \A \C \L}
(equiv? "A" "A") ;=> {}
(equiv? "A" "B") ;=> {\A \B}
(equiv? "AB" "A") ;=> nil
(equiv? "ABB" "XXY") ;=> nil
```

## Idea

### English

### فارسی


### Data Transformation - مراحل تغییر داده
```nim
```