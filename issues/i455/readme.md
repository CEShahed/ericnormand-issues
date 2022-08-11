# issue 455 - Auto Complete :: [link](https://ericnormand.me/issues/purelyfunctional-tv-newsletter-455-how-and-when-to-apply-domain-modeling)

## Description

I always liked flexible autocomplete where you can type a few letters, even skipping some letters, and it can find the file or word for you.

Your task is to write a function that determines if you can complete a sequence of characters to a given string.

### Examples
```clj
(completes? "a" "autocomplete") ;=> true
(completes? "atc" "autocomplete") ;=> true
(completes? "hello" "hello") ;=> true
(completes? "ll" "hello") ;=> true
(completes? "llh" "hello") ;=> false
```

***The function returns true if all of the following are true (otherwise `false`):***
- The first string contains only letters in the second string.
- The first string's letters are in the same order as in the second string.

**Note** that this means that you can match any number of letters between typed letters.

## Idea

### English

we have 2 index cursors, one for first string (minor), and one for second one (major).

**at every stage of the loop:**

1. check wether the characters at both indexes of strings are equal:
   1. if so, move both cursors
   2. otherwise, only move major cursor

2. return `true` if the minor cursor reached at the end of the minor string:
3. return `false` if major cursor was at the end the major string

### فارسی

دو تا اشاره گر اندیس  تعریف میکنیم:

یکی برای رشته اول (فرعی)
یکی برای رشته دوم (کامل)

در هر مرحله از حلقه این عملیات های 1و2 رو انجام میدیم

**مرحله 1**:
چک میکنیم که آیا کاراکتری که هردو اندیس بهش اشاره میکنن برابر هستن یا نه

**مرحله 1.1**:
اگر بودن هردوتا اندیس رو یکی میبریم جلو

**مرحله 1.2**:
اگر نه فقط اندیس اشاره گر کامل رو میبریم جلو

**مرحله 2**:
اگر به انتهای رشته فرعی رسیده بودیم، جواب بله هست

**مرحله 3**:
اگر به انتهای رشته اصلی رسیده بودیم جواب خیر هست