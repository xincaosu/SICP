;Exercise 01.06
;如果采用应用序，程序会陷入死循环。因为“new-if”不具备短路功能，导致程序中的
;“(sqrt-iter (improve guess x) x”作为参数，被不断展开。
;如果采用应用序，能在某个时候的“cond”发生短路，从而避免死循环。
;此题可以和“Exercise 01.05”一起对比思考。

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (improve guess x)
  (/ (+ guess
        (/ x guess))
     2))

(define (good-enough? guess x)
  (< (abs (- x (* guess guess)))
     0.001))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))

(define (sqrt x)
  (sqrt-iter 1 x))

(sqrt 1)
