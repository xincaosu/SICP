;Exercise 01.18
(define (double x) (+ x x))
(define (halve x) (/ x 2))

(define (* a b)
  (define (iter a b t)
    (cond ((= b 0) t)
          ((even? b) (iter (double a) (halve b) t))
          (else (iter a (- b 1) (+ t a)))))
  (iter a b 0))

(* 11 81)
;output: 891
