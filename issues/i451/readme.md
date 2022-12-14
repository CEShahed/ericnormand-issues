# issue 451 - Ulam sequence :: [link](https://ericnormand.me/issues/purelyfunctional-tv-newsletter-451-signature-driven-development)

## Description

Ulam sequence

The Ulam sequence is an interesting mathematical sequence of integers. It starts with `[1 2]`. 

**At each step, the next element is:**
- not already in the sequence
- a sum of two previous elements
- the number must be produced by only one sum
- the smallest in case there are multiple candidates

Let's walk through an example.

As we said before, the first two elements are `1` and `2`. Those sum to `3`, and there's only one way to get it, so `3` is the next element.

```clj
[1 2 3]
```
Now, there 

 possible sums: `1+2=3`, `1+3=4`, and `2+3=5`. `3` already exists, so it's ***out***. `4` and `5` both only have one way to produce them, but `4` is *smaller*, so it's the next element.

```clj
[1 2 3 4]
```
Now: `1+2=3` (done), `1+3=4` (done), `1+4=5`, `2+3=5`, `2+4=6`, `3+4=7`. `5` is produced two ways, so it's out. `6 < 7`, so the next element is `6`.

```clj
[1 2 3 4 6]
```

Your task is to create a lazy Ulam sequence.

### Example
```clj
(take 2 (ulam)) ;=> (1 2)
(take 5 (ulam)) ;=> (1 2 3 4 6)
(take 17 (ulam)) ;=> (1 2 3 4 6 8 11 13 16 18 26 28 36 38 47 48 53)
```

## Idea

### English

with initial value of sequence `@[1, 2]`, for (n-2) times we do these steps.

1. save all possible sums with their repeatations
   1. loop through all 2 element combinations of exsting sequence
   2. calculate summation of every combination
   3. filter the ones have are larger than the last element of current sequence
   4. add it to count-table (count table is a table that keeps number of occurance of elements)
2. get minimum of sums that repeated only once
   1. loop through "possible-sums" count-table
   2. filter the ones that have been repeated only once
   3. extract the sum
   4. update the minimum
3. add result of step 2 into the result sequence

### فارسی


### Data Transformation - مراحل تغییر داده
according to the example provided in Description:
```nim
[1 2 3 4] # existing sequence in 2th iteration

[(1,2), (1,3), (1,4), (2,3), (2,4), (3,4)] # <-- step 1.1
[3, 4, 5, 5, 6, 7] # <-- step 1.2
[5, 5, 6, 7] # <-- step 1.3
{5: 2, 6: 1, 7: 1} # <-- step 1.4

{6:1, 7:1} # <-- step 2.2
[6, 7] # <-- step 2.3
6 # <-- step 2.4

[1 2 3 4 6] # <-- step 3 - final
```
