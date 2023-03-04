# issue 400 - RGB Color Mixing :: [link](https://ericnormand.me/issues/purelyfunctional-tv-newsletter-400-is-software-design-worthless)

## Description

Here's an algorithm for mixing multiple RGB colors to create a single color.

Separate the colors into Red, Green, and Blue components.
Average all the Reds together, average all the Greens together, average all the Blues together.
Put the average values back together into a resulting RGB.
Is this the right way to do it? I don't know! But it's the way we're going to implement in this problem. Your task is to take a collection of RGB strings of the form "#FF021A", mix them like the algorithm above, and return the resulting RGB string.

Note that each RGB string contains two hexadecimal digits for each component. 
You can round the averages to integers however you want.

### Examples
```clj
(mix ["#FFFFFF" "#000000"]) ;=> "#7F7F7F" or "#808080" depending on how you round
(mix ["#FF0000" "#00FF00" "#0000FF"]) ;=> "#555555"
```

# میکس رنگ ها

## توضیحات
برنامه ای بنویسید که چند رنگ هگزادسیمال 
( Hexa Decimal )
را به عنوان ورودی دریافت کرده و میانگین آنها را حساب کند. 

**نکته:**
اعداد باید به سمت پایین گرد شوند. ( یعنی اعشار برداشته شود )


### بدانیم
ارقام عدد هگزادسیمال بر مبنای 16 هستند که ترتیب رقم های آن که از 0 تا 15 میباشد، به صورت زیر است:

```
0..9 a..f
```
که 0 کمترین مقدار است و 
a
به معنی 10 و
f 
به معنی 15 میباشد.


هر رنگ هگزا دسیمال از 3 بخش تشکیل شده که هر کدام از اجزا دو رقم دارد.
این محدودیت دو رقم باعث میشود ک هر بخش محدوده عددی بین 
`00` تا `ff`
یا به مبنای ده-دهی بین
`0` تا `255`
باشد.

بخش دو رقمی اول رنگ قرمز، بخش دوم رنگ سبز و بخش سوم رنگ آبی را نمایش میدهد.
که این بر اساس الگوی 
`RGB`
است. (رنگ ها در کامپیوتر معمولا به این الگو ذخیره میشوند) ا


شما برای میانگین گرفتن، باید بخش های متناظر هر رنگ را باهم جمع کنید و در آخر میانگین بگیرید.

## مثال 1
### ورودی
```
#FFFFFF #000000
```

### خروجی
```
#7F7F7F
```
### توضیح
ابندا هر جز اعداد را از هم جدا میکنیم
(خط اول برای رنگ اول و خط دوم برای رنگ دوم):
```
FF FF FF
00 00 00
```

سپس هر بخش را به مبنای ده-دهی تبدیل میکنیم
```
255 255 255
0   0   0
```
سپس میانگین میگیریم:
```
127.5 127.5 127.5
```
و به پایین گرد میکنیم
```
127 127 127
```
حالا به هگزا دسیمال تبدیل میکنیم
```
7F 7F 7F
```
و بهم میچسبانیم:
```
#7F7F7F
```

## مثال 2
### ورودی
```
#FF0000 #00FF00 #0000FF
```

### خروجی
```
#555555
```
