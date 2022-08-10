# issue 468 - Maxie and Minnie
[link](https://ericnormand.me/issues/468)

## English

1. first of all, we convert the number into sequence of characters (in order to access any digit by index).
2. looping trough all possbile swaps:
3. swap 2 characters
4. convert it to number (`integer` in this case)
5. update the maxxie and minnie


## فارسی

**مرحله 1**:
اول از همه، عدد داده شده رو به دنباله یا لیستی از کاراکتر تبدیل میکنیم.
( تا بتونیم با اندیس بهشون دسترسی داشته باشیم )

**مرحله 2**:
برا همه جا به جایی های ممکن مراحل زیر را انجام میدهیم:

**مرحله 3**:
دو کاراکتر را باهم جا به جا میکنم

**مرحله 4**:
آن را دوباره به عدد تبدیل میکنیم

**مرحله 5**:
عدد جدید را با نتیجه قبل مقایسه میکنیم، در صورتی که عدد جدید کمتر از کمترین مقدار ثبت شده بود،
کمترین مقدار را با عدد جدید جایگزین میکنیم.
( همین کار را برای عدد بیشینه نیز انجام میدهیم)
