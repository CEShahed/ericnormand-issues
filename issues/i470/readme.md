# issue 470 - Reverse words
[link](https://ericnormand.me/issues/470)

## English

1. We split the given sentence by space `" "`, 
2. then we reverse the result sequence of data,
3. then we re-join that sequence with space in between items. 

## Persian

**مرحله 1**:
ابتدا جمله داده شده را با استفاده از فاصله تکه تکه میکنیم، 

**مرحله 2**:
سپس تکه های بدست آمده را برعکس میکنیم، 

**مرحله 3**:
سپس تکه های برعکس شده را با کاراکتر فاصله دوباره بهم میچسبانیم

## Data Transformation - ( مراحل تغییر داده )

```nim
"hey my name is Hamid" # <-- given data
@["hey", "my", "name", "is", "Hamid"] # phase 1
@["Hamid", "is", "name", "my", "hey"] # phase 2
"Hamid is name my hey" # phase 3 :: final
```
