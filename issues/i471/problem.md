# English

When you cross the border in a car, you have to abide by the local license plate regulations.

(This is not true, but let's play pretend!) The order of the numbers and letters stays the same. But the groupings change from country to country.

Write a function that takes a license plate code (letters, digits, and hyphens in a string) and a group size (integer). 

The function should return a new string with the characters regrouped with hyphens between groups. 

All groups should be of the given size, except for perhaps the first, if there aren't enough characters to fill the group.

### Examples
```clj
(regroup "A5-GG-B88" 3) ;=> "A-5GG-B88"
(regroup "A5-GG-B88" 2) ;=> "A-5G-GB-88"
(regroup "6776" 2) ;=> "67-76"
(regroup "F33" 1) ;=> "F-3-3"
(regroup "IIO" 7) ;=> "IIO"
```