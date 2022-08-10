# issue 458 - string difference
[link](https://ericnormand.me/issues/purelyfunctional-tv-newsletter-458-three-doorways-of-domain-modeling)

## English

1. convert string `a` and `b` into count-tables
2. loop through `b`'s count-table
3. if the repeat of one char in `b`'s count-table were different from `a`'s, this is the answer

## فارسی

**مرحله 1**:
ابتدا ورودی اول و دوم را به جدول شمارش تبدیل میکنیم

**مرحله 2**:
سپس روی جدول شمارش ورودی دوم پیمایش میکنیم

**مرحله 3**:
اگر تکرار کاراکتری در جدول شمارش ورودی دوم با تکرار همان کاراکتر در جدول شمارش ورودی اول فرق داشت، 
این همان کاراکتر جواب است


## Data Transformation - مراحل تغییر داده
```nim
a: "cccvv", b: "cvvcvc" # <-- inputs

ac = {'c': 3, 'v': 2} # step 1
bc = {'c': 3, 'v': 3} # step 1
```