# English

A futuristic robot is programmed to take in a sequence of numbers. Each number is the distance to travel in a cardinal direction (north, south, east, west). 

It starts facing north at (0, 0), travels straight ahead by the distance given in the first number, then turns 90 degrees clockwise, now facing east. 

Then it repeats with the next number. Your job is to calculate where it ends up at the end of the sequence.

### Examples
```clj
(move []) ;=> [0 0] ;; No motion
(move [10]) ;=> [0 10] ;; move 10 straight north
(move [10 2]) ;=> [2 10]
(move [10 2 3]) ;=> [2 7]
```
