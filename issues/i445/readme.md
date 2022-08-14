# issue 445 - Dueling Knights :: [link](https://ericnormand.me/issues/purelyfunctional-tv-newsletter-445-2-kinds-of-genericity)

## Description
A chess board has nothing but knights ♞ and empty spaces. In this setup, the color of the knights doesn't matter. Each knight could potentially capture any other. Your job is to write a function to figure out which knights can capture each other, if any.

A board is represented as a vector of vectors, each `8` elements long. A `0` represents an empty square. A `1` represents a knight. Your function should return a collection of pairs. The pairs represent the positions of the two knights that can capture each other.

For reference, see this site for understanding how knights move and capture.

### Examples

```clj
(captures [[0 0 0 1 0 0 0 0]
           [0 0 0 0 0 0 0 0]
           [0 1 0 0 0 1 0 0]
           [0 0 0 0 1 0 1 0]
           [0 1 0 0 0 1 0 0]
           [0 0 0 0 0 0 0 0]
           [0 1 0 0 0 0 0 1]
           [0 0 0 0 1 0 0 0]]) ;=> [] ;; no captures

(captures [[0 0 0 1 0 0 0 0]
           [0 0 0 0 0 0 0 0]
           [0 0 0 0 1 0 0 0]
           [0 0 0 0 0 0 0 0]
           [0 0 0 0 0 0 0 0]
           [0 0 0 0 0 0 0 0]
           [0 0 0 0 0 0 0 0]
           [0 0 0 0 0 0 0 0]]) ;=> [#{[0 3] [2 4]}] ;; one capture

(captures [[0 0 0 1 0 0 0 0]
           [0 0 0 0 0 0 0 0]
           [0 0 0 0 1 0 0 0]
           [0 0 1 0 0 0 0 0]
           [0 0 0 0 0 0 0 0]
           [0 0 0 0 0 0 0 0]
           [0 0 0 0 0 0 0 0]
           [0 0 0 0 0 0 0 0]]) ;=> [#{[0 3] [2 4]} #{[2 4] [3 2]}] ;; two capture
```
## Idea

### English

### فارسی


### Data Transformation - مراحل تغییر داده
```nim
```