# issue 452 - Consecutive numbers :: [link](https://ericnormand.me/issues/purelyfunctional-tv-newsletter-452-domain-invariants)

## Description

Write a function that determines whether a sequence of integers can be rearranged into a sequence of consecutive numbers without duplicates. 

The function should return the sequence of consecutive numbers or nil if it is not possible.

### Examples
```clj
(consec []) ;=> () ;; trivially true
(consec [1]) ;=> (1) ;; ditto
(consec [3 1 2]) ;=> (1 2 3)
(consec [5 3 2 1]) ;=> nil ;; non-consecutive (4 is missing)
(consec [7 8 9 7]) ;=> nil ;; 7 repeats
```

## Idea

### English
1. create a new sequence from input with removed dupicated items and sorted in increasing manner
2. if the length of new sequence were equal to original
3. loop through new sequence
4. check difference of every item is just 1 more than previous

### فارسی
**مرحله 1**:
یک لیست جدید از لیست ورودی ایجاد میکنیم که آیتم های تکرار آن حذف شده و به صورت سعودی مرتب شده

**مرحله 2**:
اگر تعداد عناصر لیست جدید با لیست ورودی برابر بود

**مرحله 3**:
در لیست جدید پیمایش میکنیم

**مرحله 4**:
مطمئت میشویم که اخلاف هر عنصر با عنصر قبلی اش 1 است


### Data Transformation - مراحل تغییر داده
```nim
@[5, 3, 2, 1] # <-- input
@[1, 2, 3, 5] # <-- step 1
```