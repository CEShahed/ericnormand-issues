# English
The maxxie of a number n is the largest number you can achieve by swapping two of its digits (in decimal) (or choosing not to swap if it is already the largest possible). 

The minnie is the smallest with one swap (though you can't swap a zero digit into the most significant position).

Your task is to write a function that takes an integer and returns a tuple of the maxxie and minnie.

### Examples
```clj
(swapmaxmin 213) ;=> [312, 123]
(swapmaxmin 12345) ;=> [52341, 12345] ;; the number was already the smallest
(swapmaxmin 100) ;=> [100, 100] ;; no swap possible because of zeroes
```

### Notes
- Swap any two decimal digits
- No leading zeroes
- Don't swap if you can't make it bigger/smaller


# فارسی