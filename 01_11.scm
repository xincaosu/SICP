;Exercise 01.11
(define (f1 n) 
 (cond ((< n 3) n)
       (else (+ (f (- n 1)) 
                (* 2 (f (- n 2)))
                (* 3 (f (- n 3)))))))


(define (f-iter count n a b c)
  (cond ((< n 3) n) 
        ((= (+ count 2) n) a)
        (else (f-iter (+ count 1) 
                      n
                      (+ a (* 2 b) (* 3 c))
                      a b))))

(define (f2 n) (f-iter 0 n 2 1 0))

(f2 9)

;output: 796

