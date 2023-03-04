# issue 414 - Decimal to binary :: [link](https://ericnormand.me/issues/purelyfunctional-tv-newsletter-414-constrain-your-design-with-composition-first)

## Description 

Write a function that takes a string and replaces all occurrences of numbers with their decimal form.

### Examples
```clj
(d->b "I have 2 arms.") ;=> "I have 10 arms."
(d->b "That costs 3 dollars. But I only have 1 dollar.") ;=> "That costs 11 dollars. But I only have 1 dollar."

(d->b "I was born in 1981.") ;=> "I was born in 11110111101."
```
Any contiguous string of digits is a number. That means that spaces, periods, and commas separate numbers instead of indicating differnt parts. For instance, `2,000` is the number `2` followed by the number `000`.

-----------

# تبدیل ده-دهی به دو-دویی

## توضیحات
برنامه ای بنویسید که متنی تحویل بگیرد و همه اعداد آن را
از مبانی ده-دهی به مبنای دو-دویی تبدیل کند.

**نکته**: 
برنامه باید اعدادی که رقم های آن با ویرگول جدا شده را نیز در نظر بگیرد.

## مثال 1
### ورودی
```
Hey my name is Hamid and I have 4 Dollers! This is almost equals to 2,000,000 Rials. With this amound of money I can buy 10 snacks, as snacks are almost 200,000 Rials. 
```

### خروجی
```
Hey my name is Hamid and I have 100 Dollers! This is almost equals to 111101000010010000000 Rials. With this amound of money I can buy 1010 snacks, as snacks are almost 100111000100000 Tomans. 
```
