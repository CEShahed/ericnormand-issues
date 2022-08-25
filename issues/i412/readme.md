# issue 412 - Land perimeter :: [link](https://ericnormand.me/issues/purelyfunctional-tv-newsletter-412-use-and-abuse-of-the-decorator-pattern)

## Description

A grid of 1s and 0s shows the location of land and water. 
A `1` represents a square full of land, a `0` represents a square full of water. 

Your job is to calculate the perimeter of the land, both as it touches water and touches the edge.

A grid with a single square filled with land has a perimeter of `4`, since there are *four sides*:
```clj
(perimeter [[1]]) ;=> 4
```

Likewise, a *single square filled with water* has a perimeter of `0`:
```clj
(perimeter [[0]]) ;=> 0
```

Two squares of *land next to each other* share an edge, which reduces the perimeter:
```clj
(perimeter [[1 1]]) ;=> 6
```

The edge of the grid is like an **implicit encircling of water**:
```clj
(perimeter [[1 1]
            [1 1]]) ;=> 8
            
(perimeter [[0 0 0 0]
            [0 1 1 0]
            [0 1 1 0]
            [0 0 0 0]]) ;=> 8 (same!)
```

Here are some other **weird shapes**:
```clj
(perimeter [[1 1 1 1 1 1]
            [1 0 0 0 0 1]
            [1 0 1 1 0 1]
            [1 0 0 0 0 1]
            [1 1 1 1 1 1]]) ;=> 42

(preimeter [[0 1 0 0]
            [1 1 1 0]
            [0 1 0 0]
            [1 1 0 0]]) ;=> 16
```

## Idea

### English


### Data Transformation - مراحل تغییر داده
```nim
```