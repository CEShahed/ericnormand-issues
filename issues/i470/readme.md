# issue 470 - Reverse words :: [link](https://ericnormand.me/issues/470)

## Description

Write a function that takes a string containing words (one or more sentences) and returns a string containing the words in reverse order.

### Examples
```clj
(reverse-words "my name is Eric.") ;;=> "Eric. is my name"
(reverse-words "hello") ;;=> "hello"
(reverse-words "I love you") ;;=> "you love I"
```

**Note:** 
- Words are characters separated by whitespace.

## Idea

### English

1. We split the given sentence by space `" "`, 
2. then we reverse the result sequence of data,
3. then we re-join that sequence with space in between items. 

### فارسی

**مرحله 1**:
ابتدا جمله داده شده را با استفاده از فاصله تکه تکه میکنیم، 

**مرحله 2**:
سپس تکه های بدست آمده را برعکس میکنیم، 

**مرحله 3**:
سپس تکه های برعکس شده را با کاراکتر فاصله دوباره بهم میچسبانیم

### Data Transformation - ( مراحل تغییر داده )

```nim
"hey my name is Hamid" # <-- given data
@["hey", "my", "name", "is", "Hamid"] # phase 1
@["Hamid", "is", "name", "my", "hey"] # phase 2
"Hamid is name my hey" # phase 3 :: final
```
