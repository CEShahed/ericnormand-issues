# issue 400 - RGB Color Mixing :: [link](https://ericnormand.me/issues/purelyfunctional-tv-newsletter-400-is-software-design-worthless)

## Description

Here's an algorithm for mixing multiple RGB colors to create a single color.

Separate the colors into Red, Green, and Blue components.
Average all the Reds together, average all the Greens together, average all the Blues together.
Put the average values back together into a resulting RGB.
Is this the right way to do it? I don't know! But it's the way we're going to implement in this problem. Your task is to take a collection of RGB strings of the form "#FF021A", mix them like the algorithm above, and return the resulting RGB string.

Note that each RGB string contains two hexadecimal digits for each component. 
You can round the averages to integers however you want.

### Examples
```clj
(mix ["#FFFFFF" "#000000"]) ;=> "#7F7F7F" or "#808080" depending on how you round
(mix ["#FF0000" "#00FF00" "#0000FF"]) ;=> "#555555"
```

## Idea

### English

### فارسی


### Data Transformation - مراحل تغییر داده
```nim
```