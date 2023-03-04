# issue 408 - Consecutive numbers :: [link](https://ericnormand.me/issues/purelyfunctional-tv-newsletter-408-3-stakeholders-of-programming)

## Description

Write a function that takes a string of digits. 
Try to break up the digits into consecutive integers. 
If you can, return them, otherwise, return `nil`.

### Examples
```clj
(consec "121314") ;=> [12 13 14]
(consec "121315") ;=> nil
(consec "444445") ;=> [444 445]
(consec "12") ;=> [1 2]
(consec "1") ; throws error
```

# اعداد متوالی
## توضیحات
برنامه ای بنویسید که اعدادی پشت سر بهم به صورت یک 
`string`
گرفته و در صورت وجود اعداد متوالی، آن هارا لیست کند، 
در غیر این صورت، بنویسد
`error`.

**نکته:**
توجه داشته باشید که تعداد اعداد خروجی باید بیشتر از 1 عدد باشد.


## مثال 1
### ورودی
```
121314
```
### خروجی
```
12 13 14
```


## مثال 2
### ورودی
```
1
```
### خروجی
```
error
```

## مثال 3
### ورودی
```
12
```
### خروجی
```
1 2
```

## مثال 4
### ورودی
```
888990919293949596979899100101102103
```
### خروجی
```
88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103
```