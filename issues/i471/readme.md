# issue 471 - License plates
[link](https://ericnormand.me/issues/471)

## English

1. First of all, we remove the `-`s
2. then we calculate size of first part (since only first part may change)
3. then we chunk the editted licence ( the one without `-`s from ) into desired
4. join the chunks with `-` in between

## فارسی
**مرحله 1**:
ابتدا کاراکتر `-` را از لایسنس حذف میکنیم

**مرحله 2**:
سپس اندازه قسمت اول را محاسبه میکنیم
( همانطور که میدانید، تنها قسمت اول میتواند فرق کند و بقیه قسمت ها ثابت اند )

**مرحله 3**:
لایسنسی را که از آن کاراکتر `-` را حذف کردیم را به قسمت های مناسب تقسیم میکنیم

**مرحله 4**:
قسمت های بدست آمده را با کاراکتر `-` بهم میچسبانیم


## Data Transformation - ( مراحل تغییر داده )

```nim
licence: "A5-GG-B88", chunckSize: 3 # inputs

"A5-GG-B88" # <-- input
"A5GGB88" # step 1
## becuase "A5GGB88" has length of 7 and the chunk size is 3, the first chunk size is 1 (7 mod 3 == 1) <-- step 2
@["A", "5GG", "B88"] # <-- step 3
"A-5GG-B88" # <-- step 4, final
```
