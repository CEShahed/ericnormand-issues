# issue 388 - Title case :: [link](https://ericnormand.me/issues/purelyfunctional-tv-newsletter-388-further-down-or-is-it-up-the-stack)

## Description

In English, titles of books get their own type of capitalization called title case. In title case, major words are capitalized and minor words are in lower case. Most words are major words. 

**Minor words are:**
- three letters or shorter AND
- conjunctions, articles, or prepositions

**Note:** the first word of a title is always capitalized, even if it is a minor word.

For a better, and more complete, summary of the nuances of title case, see the APA guide here: https://apastyle.apa.org/style-grammar-guidelines/capitalization/title-case

Your task is to write a function that implements title case. 
The string you get will already have proper nouns capitalized, and you can otherwise assume you only need to capitalize words, not lowercase them.

Here is a list of minor words you can use:

```clj
["and" "as" "but" "for" "if" "nor" "or" "so" "yet" "a" "an" "the" "as" "at" "by"
"for" "in" "of" "off" "on" "per" "to" "up" "via"]
```

There are probably more minor words, but that's a good list to start with.

Also, please take this function as far as you'd like, using any title case rules as you see fit. 
The English language has no definitive standard, so many places define their own rules that may differ.


### Example

```clj
(title-case "the hobbit") ;=> "The Hobbit"
(title-case "the fellowship of the ring") ;=> "The Fellowship of the Ring"
(title-case "the two towers") ;=> "The Two Towers"
(title-case "the return of the king") ;=> "The Return of the King" 
```


## Idea

### English


### Data Transformation - مراحل تغییر داده
```nim
```