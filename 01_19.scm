;Exercise 01.19
(define (fib-iter a b p q count) 
  (cond ((= count 0) b)
        ((even? count) (fib-iter a
                                 b
                                 (+ (* p p) (* q q))
                                 (+ (* 2(* p q)) (* q q))
                                 (/ count 2)))
        (else (fib-iter (+ (* q b) (* p a) (* q a))
                        (+ (* p b) (* q a))
                        p
                        q
                        (- count 1)))))

(define (fib n)
  (fib-iter 1 0 0 1 n))

(fib 11)
;output: 89
