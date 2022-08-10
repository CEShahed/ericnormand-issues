# issue 472 - Roboto :: [link](https://ericnormand.me/issues/472)

## Dwscription

A futuristic robot is programmed to take in a sequence of numbers. Each number is the distance to travel in a cardinal direction (north, south, east, west). 

It starts facing north at (0, 0), travels straight ahead by the distance given in the first number, then turns 90 degrees clockwise, now facing east. 

Then it repeats with the next number. Your job is to calculate where it ends up at the end of the sequence.

### Examples
```clj
(move []) ;=> [0 0] ;; No motion
(move [10]) ;=> [0 10] ;; move 10 straight north
(move [10 2]) ;=> [2 10]
(move [10 2 3]) ;=> [2 7]
```


## Idea

### English

start from point `(0, 0)` and move toward the direction. (the inital direction is North).
after every move rotate the cursor `90` degrees and repeat.

it means on the first try, 
  go toward `Y+`, 
  then `X+`, 
  then `Y-`, 
  then `X-`, 
  then repeat till the end.

### فارسی

مسئله از ما میخواد که از نقطه 0و0 شروع کنیم و بعد از هر حرکت
، 90 درجه اون اشاره گر رو چرخش بدیم و حرکت بعدی رو انجام بدیم.

(جهت اولیه اشاره گر به سمت شماله)

این یعنی حرکت اول به سمت
`Y`+ 
حرکت دوم به سمت
`X`+
حرکت سوم 
`Y`-
حرکت چهارم
`X`-
و بعد از اول شروع کنیم تا اعداد تموم بشه.
