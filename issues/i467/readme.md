# issue 467 - Unfriendly neighbors
[link](https://ericnormand.me/issues/467)

## English

1. with looping trough neighbors (step 1):

2. then compare the `new_member` value to `previous` and `next` neighbor,
if the type of `new_member` was as the same as one of `previous` and `next` neighbors,

3. add the spot to the `happy` list,
otherwise add it to the `unhappy` list.


## فارسی
**مرحله 1:**
در حلقه پیمایش میکنیم.

**مرحله 2:**
در هر پیمایش چک میکنیم که آیا مقدار جدید با یکی از دو همسایه قبل و بعد خودش یکی است یا نه

**مرحله 3:**
اگر یکی بود، آن محل را به لیست خوشحال اضافه میکنیم
در غیر این صورت آن را به لیست ناراحت اضافه میکنیم
