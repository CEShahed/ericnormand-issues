# English

I'm fond of search that is forgiving of small mistakes. If you type a few letters from the word, even if you miss a letter, you should get the word.

Here's a simple, forgiving search function.

Write a function that takes two strings, a needle and a haystack. The function should return `true` if the needle is found in the haystack, 

**with a few forgiving features:**
- If the needle is fully contained in the haystack, it should return true.
- If the needle would be fully contained in the haystack, but for one or more missing letters, it should return `true`.
- Don't match the needle across whitespace or other non alphanumeric characters.
Otherwise, return `false`.

### Examples

```clj
;;      needle   haystack
(found? "abc" "dddabcfff") ;=> true (direct match)
(found? "abc" "xyzannbffooc") ;=> true (add missing "nn" and "ffoo")
(found? "abc" "a bc") ;=> false (don't match across whitespace)
(found? "xxx" "cxccx") ;=> false (not enough x's)
(found? "" "") ;=> true (trivially so)
(found? "" "aaa") ;=> true (also trivial)
```

# Persian