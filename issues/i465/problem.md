# English

Write a function that takes a sequence of strings and a target string. 
For each string in the sequence, determine if it is equal to the target string after exactly one letter swap. 

Return the sequence of letter pairs that are swapped, or nil if it doesn't exist.

### Example

```clj
(letter-swaps ["bacd" "abdc" "abcde" "abcc" "abcd"] "abcd")
  ;=> [#{\a \b} #{\c \d} nil nil nil]
```

Swapping a and b in "bacd" gives you the target string. 
Swapping c and d in "abdc" gives you the target string. 
But there is no way to swap to get an extra e. And trading a d for a c is not possible. 
Finally, the last string has no swaps, and exactly one is required.

# Persian