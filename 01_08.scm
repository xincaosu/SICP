;Exercise 01.08
(define (squre x) (* x x))

(define (improve guess x)
  (/ (+ (/ x (squre guess))
        (* 2 guess))
     3))

(define (good-enough? old-guess guess x)
  (< (abs (- guess old-guess))
     (* old-guess 0.000001)))

(define (cube-root-iter old-guess guess x)
  (if (good-enough? old-guess guess x)
      guess
      (cube-root-iter guess (improve guess x) x)))

(define (cube-root x)
  (cube-root-iter 1.0 2.0 x))

(cube-root 99885135774567536478842341656.0)
