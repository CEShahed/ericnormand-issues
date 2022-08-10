# issue 463 - word search
[link](https://ericnormand.me/issues/purelyfunctional-tv-newsletter-463-what-is-beautiful-code)

## English
we define a variable `i` as indicator of current index of `needle` to be matched.

1. loop through every character of `haystack`
2. if the char were equal to `needle[i]`, then push `i` forward
3. if there were no more charaters to match, return `true`

## فارسی

### واژه نامه
needle
:  سوزن

haystack
:  انبار کاه

### مراحل کار

متغیر `i` 
را برای نگه داری اندیسی از متغییر سوزن برای تطبیق تعریف میکنیم

**مرحله 1**: 
روی همه کاراکتر های ورودی `کاه` پیمایش میکنیم

**مرحله 2**: 
اکر کاراکتری در حال پیمایش برابر با اندیس i از ورودی سوزن برابر بود
به متغیر i یک واحد اضافه میکنیم

**مرحله 3**: 
اگر کاراکتر دیگری در سوزن برای تطبیق وجود نداشت،
این یعنی تطبیق با موفقیت انجام شده
