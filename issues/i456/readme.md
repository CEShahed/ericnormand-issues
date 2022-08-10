# issue 456 - Rhyming scheme equivalence :: [link](https://ericnormand.me/issues/purelyfunctional-tv-newsletter-456-a-sense-of-mystery)

## Description

| poem             | letter |
| ---------------- | ------ |
| Roses are red    | A      |
| Violets are blue | B      |
| Sugar is sweet   | C      |
| And so are you   | B      |


English teachers like to represent the rhyming pattern of poems with letters. Each line rhymes with lines with the same letter. 
In this case, B lines rhyme together, but the A and C lines don't rhyme. We will call that a `ABCB` rhyming scheme. 
However, the choice of letters is arbitrary. We could have called it `IBPB` or `XALA`.

We want a way to know if two rhyming schemes are equivalent. 
Write a function that returns nil if they are not equivalent and returns a map of replacements if they are equivalent.

### Examples
```clj
(equiv? "ABCB" "XALA") ;=> {\A \X \B \A \C \L}
(equiv? "A" "A") ;=> {}
(equiv? "A" "B") ;=> {\A \B}
(equiv? "AB" "A") ;=> nil
(equiv? "ABB" "XXY") ;=> nil
```

## Idea

### English

1. first we check the lengthes of 2 rythmes
2. if so, then normalize the rythmes
3. check normalized of 2 rythmes were the same
4. is so, make convert table

### فارسی

**مرحله 1**:
ابتدا چک میکنیم که آیا دو ریتم اندازه یکسان دارند یا نه

**مرحله 2**:
اگر اندازه یکسان داشتند، آن دو ریتم را عادی سازی میکنیم

**مرحله 3**:
چک میکنیم که عادی سازی شده ریتم ها برابر هستند یا نه

**مرحله 4**:
اگر برابر بودند، جدول تبدیل را ایجاد میکنیم


### Data Transformation - مراحل تغییر داده
```nim
"VFKF", "XALA" # <-- inputs
"ABCB", "ABCB" # <-- step 2 & 3
{'V': 'X', 'F': 'A', 'K': 'L'} # <-- step 4 - final
```