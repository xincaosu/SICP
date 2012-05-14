;Exercise 01.07
;很小的数进行运算的时候，结果可能有很大的误差；
;很大的数进行运算的时候，由于丢失小数的精度，导致“good-enough?”无法满足，程序陷入死循环。
;修正后的程序，对于很大和很小的数，都能很好的适应。

(define (improve guess x)
  (/ (+ guess
        (/ x guess))
     2))

(define (good-enough? old-guess guess x)
  (< (abs (- guess old-guess))
     (* old-guess 0.000001)))

(define (sqrt-iter old-guess guess x)
  (if (good-enough? old-guess guess x)
      guess
      (sqrt-iter guess (improve guess x) x)))

(define (sqrt x)
  (sqrt-iter 1.0 2.0 x))

(sqrt 99885135774567536478842341656.0)
