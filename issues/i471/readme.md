# issue 471 - License plates :: [link](https://ericnormand.me/issues/471)

# Description

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

## Idea

### English

1. First of all, we remove the `-`s
2. then we calculate size of first part (since only first part may change)
3. then we chunk the editted licence ( the one without `-`s from ) into desired
4. join the chunks with `-` in between

### فارسی
**مرحله 1**:
ابتدا کاراکتر `-` را از لایسنس حذف میکنیم

**مرحله 2**:
سپس اندازه قسمت اول را محاسبه میکنیم
( همانطور که میدانید، تنها قسمت اول میتواند فرق کند و بقیه قسمت ها ثابت اند )

**مرحله 3**:
لایسنسی را که از آن کاراکتر `-` را حذف کردیم را به قسمت های مناسب تقسیم میکنیم

**مرحله 4**:
قسمت های بدست آمده را با کاراکتر `-` بهم میچسبانیم


### Data Transformation - ( مراحل تغییر داده )

```nim
licence: "A5-GG-B88", chunckSize: 3 # inputs

"A5-GG-B88" # <-- input
"A5GGB88" # step 1
## becuase "A5GGB88" has length of 7 and the chunk size is 3, the first chunk size is 1 (7 mod 3 == 1) <-- step 2
@["A", "5GG", "B88"] # <-- step 3
"A-5GG-B88" # <-- step 4, final
```
