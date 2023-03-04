# issue 476 - How many digits? :: [link](https://ericnormand.me/issues/476)

## Description

Imagine you took all the integers between `n` and `m` (exclusive, `n < m`) and concatenated them together. *How many digits* would you have? 

Write a function that takes two numbers and returns how many digits. 
Note that the numbers can get very big, so it is not possible to build the string in the general case.

### Examples
```clj
(num-digits 0 1) ;=> 0 (there are no integers between 0 and 1)
(num-digits 0 10) ;=> 9 (1, 2, 3, 4, 5, 6, 7, 8, 9)
(num-digits 9 100) ;=> 179
```

# چند رقم وجود دارد؟

## توضیحات 

برنامه ای بنویسید که دو عدد
`a` و `b`
را از ورودی گرفته و رقم های اعداد بین آن ها را حساب کند.

## مثال 1
### ورودی
```
0 1
```
### خروجی
```
0
```
### توضیح
بین عدد 0 و 1 هیچ عددی وجود ندارد، پس تعداد ارقام 0 است

## مثال 2
### ورودی
```
7 12
```
### خروجی
```
6
```
### توضیح
اعداد بین 7 تا 12 به صورت زیر است:
```
8 9 10 11
```
که مجموعا 6 رقم دارند

## مثال 3 
### ورودی
```
9 100
```
### خروجی
```
179
```
