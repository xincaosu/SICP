;Exercise 01.17
(define (double x) (+ x x))
(define (halve x) (/ x 2))

(define (* a b) 
  (cond ((= b 0) 0)
        ((even? b) (* (double a) (halve b)))
        (else (+ (* a (- b 1)) 
                 a))))

(* 11 81)
;output: 891
