# issue 465 - Single letter swaps
[link](https://ericnormand.me/issues/465)

## English
1. we loop through all words, for every word:
2. check the length of word is equal to length of origin (how to 2 words be equal by one swap and have different lengthes?)
3. extract mismatch indexes
4. if mismatch indexes were 2, then check if we swap characters of word by extracted indexes, it would be equal to the origin or not
5. if so, capture those characters that are placed at extracted indexes

## فارسی
**مرحله 1**:
روی کلمات داده شده پیمایش میکنیم و مرال زیر را برای هرکدام تکرار میکنیم

**مرحله 2**:
چک میکنیم که اندازه کلمه با اندازه کلمه اصلی که قرار است با آن تطبیق داده شود یکی باشد
( مگه میشه با ی جابه جایی دوتا کلمه غیر هم اندازه، هم اندازه بشن؟؟ )

**مرحله 3**:
اندیس هایی که در آن دو کاراکتر های دو کلمه باهم فرق دارد را استخراج میکنیم

**مرحله 4**:
اگر تنها تعداد دو اندیس کاراکتر متفاوت داشتیم،
چک میکنیم که آیا با چا به جایی آن دو اندیس در کلمه مورد نظر، به کلمه اصلی میرسیم یا نه

**مرحله 5**:
اگر جواب مثبت بود، آن دو کاراکتر واقع در آن اندیس هارا ذخیره میکنیم


## Data Transformation - مراحل تغییر داده
```nim
@["bacd", "abdc", "abcde", "abcc", "abcd"], "abcd") # <-- input

# --- for words[0]:
## mismatches indexes of "bacd" with "abcd" :: step 3
[0, 1]

## swap chars of "bacd" at indexes [0, 1] :: step 4
"bacd" :: [0, 1] => "abcd"

## check wether the result is equal to the origin :: still step 4
"abcd" == "abcd" # true

## add replaced chars at those indexes in word :: step 5
"bacd" :: [0, 1]  => 'b'..'a'
