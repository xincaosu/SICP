;Exercise 01.16
(define (fast-expt-iter b n a)
  (cond ((= n 0) a)
        (( = (remainder n 2) 0) 
         (fast-expt-iter (* b b) 
                         (/ n 2) 
                         a))
        (else (fast-expt-iter (* b b) 
                              (/ (- n 1) 2) 
                              (* a b)))))
(define (fast-expt b n)
  (fast-expt-iter b n 1))

(fast-expt 2 10)
;output: 1024
