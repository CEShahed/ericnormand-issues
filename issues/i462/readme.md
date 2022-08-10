# issue 462 - Odd one out :: [link](https://ericnormand.me/issues/purelyfunctional-tv-newsletter-462-purelyfunctional-tv-migration)

# Description

Write a function that takes a list of words (Strings). 
The function should return true if exactly 1 word differs in length from the others. 
It should return false in all other cases.

### Examples:

```clj
(odd-one? ["a" "b" "c"]) ;=> false
(odd-one? ["a" "b" "cc"]) ;=> true
(odd-one? ["abc" "aa" "xyz" "jj"]) ;=> false
```

# Idea

### English
1. convert list of words to list of lengths
2. convert list of lengthes to a CountTable [ this data structure is a table that counts the occurance of elements]

3&4. check the result CountTable has exactly length of `2` and one of them has repeated `1` time.


### فارسی
**مرحله 1**:
لیست کلمات داده شده ره به لیستی از اندازه هر کلمه تبدیل میکنیم

**مرحله 2**:
لیست حاصل را به جدول شمارشی تبدیل میکنیم
( جدول شمارشی، جدولی است که  تنها تعداد تکرار عناصر را نگه میدارد)

**مرحله 3و4**:
چک میکنیم که جدول تنها دو عضو داشته باشد و یکی از آن ها تنها یک بار تکرار شده باشد


### Data Transformation - مراحل تغییر داده
```nim
["hey", "how", "are", "you", "my", "friend"] # <-- input
[3, 3, 3, 3, 2, 6] # <-- step 1
{3:4, 2:1, 6:1} # <-- step 2 :: style {element: repeats}
[4, 1, 1] # <-- step 3
false # <-- final
```