# issue 463 - word search :: [link](https://ericnormand.me/issues/purelyfunctional-tv-newsletter-463-what-is-beautiful-code)

## Description

I'm fond of search that is forgiving of small mistakes. If you type a few letters from the word, even if you miss a letter, you should get the word.

Here's a simple, forgiving search function.

Write a function that takes two strings, a needle and a haystack. The function should return `true` if the needle is found in the haystack, 

**with a few forgiving features:**
- If the needle is fully contained in the haystack, it should return true.
- If the needle would be fully contained in the haystack, but for one or more missing letters, it should return `true`.
- Don't match the needle across whitespace or other non alphanumeric characters.
Otherwise, return `false`.

### Examples

```clj
;;      needle   haystack
(found? "abc" "dddabcfff") ;=> true (direct match)
(found? "abc" "xyzannbffooc") ;=> true (add missing "nn" and "ffoo")
(found? "abc" "a bc") ;=> false (don't match across whitespace)
(found? "xxx" "cxccx") ;=> false (not enough x's)
(found? "" "") ;=> true (trivially so)
(found? "" "aaa") ;=> true (also trivial)
```

## Idea

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
