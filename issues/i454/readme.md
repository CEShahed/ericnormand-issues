# issue 454 - Backspace Jam :: [link](https://ericnormand.me/issues/purelyfunctional-tv-newsletter-454-not-a-prescriptive-process)

## Description

Let's say we have users typing keys on the keyboard. 
We capture the characters they represent in strings. 
However, sometimes the user hits the backspace key, which removes the previous character. 
We will represent a backspace key press with a # character. 
Write a function that applies the behavior of backspace to the string.

### Examples

```clj
(apply-bs "abc#") ;=> "ab"
(apply-bs "abc###") ;=> ""
(apply-bs "###abc") ;=> "abc"
(apply-bs "there###eir") ;=> "their"
```
