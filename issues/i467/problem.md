# English
Let's say we have a sequence of integers:

```clj
[1 3 2 4 1]
```
There are 4 spots between numbers where we could insert a new number (represented by commas):

```clj
[1 ,, 3 ,, 2 ,, 4 ,, 1]
;; ^    ^    ^    ^
;; |    |    |    spot 3.5, between 3 and 
;; |    |    spot 2.5, between 2 and 3
;; |    spot 1.5, between 1 and 2
;; spot 0.5, between 0 and 1
```

We can represent those spots as halves, such as `0.5`.

We only want to insert numbers when they are "happy". 

*Odd numbers* are happy when we insert them next to at least one odd number. 
*Even numbers* are happy when we insert them next to at least one even number.

Write a function that takes a sequence of integers and an integer. It should return the happy spots and the unhappy spots.

```clj
(spots [1 1]     1) ;=> {:happy [0.5]                   }
(spots [1 1]     2) ;=> {                 :unhappy [0.5]}
(spots [1 1 2]   4) ;=> {:happy [1.5]     :unhappy [0.5]}
(spots [1 1 2 2] 3) ;=> {:happy [0.5 1.5] :unhappy [2.5]}
```

**Note**: Inserting a number may make pre-existing numbers unhappy. Ignore them!

# Persian