# issue 407 - Area of overlapping rectangles :: [link](https://ericnormand.me/issues/purelyfunctional-tv-newsletter-407-two-layers-of-design)

## Description

Write a function that takes two rectangles and returns the area of the overlap. Sometimes the overlap is zero!

```clj
(overlap-area [{:top-left {:x 0 :y 0}
                :bottom-right {:x 10 :y 10}}
               {:top-left {:x 5 :y 5}
                :bottom-right {:x 15 :y 15}}]) ;=> 25

;; 2 identical rectangles
(overlap-area [{:top-left {:x 0 :y 0}
                :bottom-right {:x 1 :y 1}}
               {:top-left {:x 0 :y 0}
                :bottom-right {:x 1 :y 1}}]) ;=> 25

;; no overlap
(overlap-area [{:top-left {:x 0 :y 0}
                :bottom-right {:x 1 :y 1}}
               {:top-left {:x 6 :y 6}
                :bottom-right {:x 8 :y 8}}]) ;=> 0

;; enclosing rectangles
(overlap-area [{:top-left {:x 0 :y 0}
                :bottom-right {:x 1 :y 1}}
               {:top-left {:x -1 :y -1}
                :bottom-right {:x 2 :y 2}}]) ;=> 1
```

## Idea

### English

### Data Transformation - مراحل تغییر داده
```nim
```