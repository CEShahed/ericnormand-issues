# issue 457 - Chess moves :: [link](https://ericnormand.me/issues/purelyfunctional-tv-newsletter-457-take-a-stance)

## Description

Write a function that determines if a chess piece, on an empty board, can move from one space to another in one move.

### Examples
```clj
(can-move? :pawn "A2" "A3") ;=> true
(can-move? :queen "H1" "A8") ;=> true
(can-move? :knight "A4" "A5") ;=> false ;; (that's not how knights move)
(can-move? :king "A8" "A9") ;=> false ;; (that's off the board)
```

### Notes
- This page has a nice graphic of all of the chess pieces and their moves.
- Assume that pawns are moving from the low to the high numbers.
- You can ignore en passant, pawn's capture, castling, and pawn's two-square move on the second rank.
- 

## Idea

### English

Nothing Special

1. convert string position to Chess position
2. if the Chess position was invalid return `false` 
3. if the move was invalid return `false`
4. otherwise return `true`

### فارسی

**مرحله 1**:
تبدیل مکان بهکه به صورت رشته داده شده، به مکان جدول شطرنج

**مرحله 2**:
اگر مکان اشتباه بود, 
`false`
خروجی بده

**مرحله 3**:
اگر حرکت اشتباه بود
`false`
خروجی بده

**مرحله 4**:
در غیر این صورت 
`true`
خروجی بده