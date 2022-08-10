# issue 460 - Rearrange sentence :: [link](https://ericnormand.me/issues/purelyfunctional-tv-newsletter-460-interface-polymorphism)

## Description

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

## Idea

### English
1. split sentence into parts by space ` ` character
2. build an empty sequence of empty strings with the length as the same as parts :: called `newSentence`
3. extract word and position number of each part
4. place every word at it's position
5. join the words in `newSentence` by space ` ` character

### فارسی
**مرحله 1**:
جمله داده شده با کاراکتر فاصله به چند بخش تقسیم میکنیم

**مرحله 2**:
یک متغیر از نوع دنباله ای از رشته خالی به اندازه تعداد کلمات میسازیم
( برای ذخیره نتیجه نهایی )

**مرحله 3**:
شماره محل و متن خالص هر قسمت را جدا میکنیم

**مرحله 4**:
هر کلمه را در جای خود میگذاریم

**مرحله 5**:
کلمات جای گذاری شده را با کاراکتر فاصله بهم مچسبانیم


### Data Transformation - مراحل تغییر داده
```nim
"fo3r 5more Elegan1t 2weapons age.7 civil6ized a4" # <-- input
@["fo3r", "5more", "Elegan1t", "2weapons", "age.7", "civil6ized", "a4"] # <-- step 1
@[("for", 3), ("more", 5), ("Elegant", 1), ("weapons", 2), ("age", 7), ("civilized", 6), ("a", 4)] # <-- step 3
@["Elegant", "weapons", "for", "a", "more", "civilized", "age"] # <-- step 4
"Elegant weapons for a more civilized age" # <-- step 5
```