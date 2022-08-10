# issue 459 - Pual Cipher :: [link](https://ericnormand.me/issues/purelyfunctional-tv-newsletter-459-revisiting-the-open-closed-principle)

## Description

Here's an interesting cipher.

Treat all letters as uppercase, and convert them to uppercase if needed.
The first alphabetical character of the string will not change.

All subsequent alphabetical characters are shifted toward Z by the alphabetical position of the preceding alphabetical character.

Non-alphabetical characters are left as-is.
Your task is to write an encoder and decoder for this cipher

### Examples
```clj
(encode "") ;=> ""
(encode "a") ;=> "A"
(encode "hello") ;=> "HMQXA"
(encode "newsletter") ;=> "NSBPEQYNYW"
(encode "1 hug") ;=> "1 HCB"
(decode "") ;=> ""
(decode "1") ;=> "1"
(decode "HMQXA") ;=> "HELLO"
```

Note that you should always be able to `decode` a string that was `encoded` and get back the ***original string uppercased***.

## Idae

### English
sorry the algorithm is a little hard to explain

### فارسی
