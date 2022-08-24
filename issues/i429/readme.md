# issue 429 - Headline Scroller :: [link](https://ericnormand.me/issues/purelyfunctional-tv-newsletter-429-crud-authorization)

## Description

A local news station needs you to program their LED scroller screen. It will scroll headlines from the right side to the left side all day. Write a function that takes a headline (string) and the number of characters in the LED screen (integer) and returns a list of the different refreshes of the screen.

The first refresh should be a string of all spaces to clear the screen:

```clj
(nth (scroller "HEADLINE" 10) 0) ;=> "          "
```

It should be a number of spaces equal to the width of the screen (in this case, `10`).

The second refresh should have the first letter after `9` spaces:

```clj
(nth (scroller "HEADLINE" 10) 1) ;=> "         H"
```
Then:
```clj
(nth (scroller "HEADLINE" 10) 2) ;=> "        HE"
```
The full output:
```clj
(scroller "HEADLINE" 10) => ("          "
                             "         H"
                             "        HE"
                             "       HEA"
                             "      HEAD"
                             "     HEADL"
                             "    HEADLI"
                             "   HEADLIN"
                             "  HEADLINE"
                             " HEADLINE "
                             "HEADLINE  "
                             "EADLINE   "
                             "ADLINE    "
                             "DLINE     "
                             "LINE      "
                             "INE       "
                             "NE        "
                             "E         "
                             "          ")
```
The scroller should end with a string of 10 spaces again.

## Idea

### English

### Data Transformation - مراحل تغییر داده
```nim
```