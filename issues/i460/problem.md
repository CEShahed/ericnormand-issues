# English

Here's a neat, yet contrived, text processing problem. 

The words in your sentence have been mixed up.
Luckily, there's a number embedded in each word that says its position in the sentence. 
 
Write a function that puts the words in the right order and removes the position digits.

### Examples:
```clj
(rearrange "World2! He1llo,") ;=> "Hello, World!"
(rearrange "fo3r 5more Elegan1t 2weapons age.7 civil6ized a4") ;=> "Elegant weapons for a more civilized age."
(rearrange "") ;=> ""
```

# فارسی