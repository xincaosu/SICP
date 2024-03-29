;Exercise 01.10
;A(x, y) = 
;  当y=0时， 0
;  当x=0时， 2y
;  当y=1时， 2
;  其他，    A(x-1, A(x, y-1))
;------------------------------------------------------------------
;(A 1 10)
;=>(A 0 (A 1 9))
;=>(* 2 (A 0 (A 1 8)))
;=>(* 2 (* 2 (A 1 8)))
;=>...
;=>(* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (A 1 1))))))))))
;=>1024
;------------------------------------------------------------------
;(A 2 4)
;=>(A 1 (A 2 3))
;=>(A 1 (A 1 (A 2 2)))
;=>(A 1 (A 1 (A 1 (A 2 1))))
;=>(A 1 (A 1 (A 1 2)))
;=>(A 1 (A 1 4))
;=>(A 1 16)
;=>65536
;------------------------------------------------------------------
;(A 3 3)
;=>(A 2 (A 3 2))
;=>(A 2 (A 2 (A 3 1)))
;=>(A 2 (A 2 2))
;=>(A 2 4)
;=>65536
;------------------------------------------------------------------
;f(n) = 2n
;g(n) = 2^n
;h(n) = 2^2^2^2..^2 (n个2)
;------------------------------------------------------------------
(define (A x y) 
 (cond ((= y 0) 0)
       ((= x 0) (* 2 y))
       ((= y 1) 2)
       (else (A (- x 1) 
                (A x (- y 1))))))

