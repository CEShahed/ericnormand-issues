# English

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

# فارسی