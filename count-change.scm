(define table '())

(define (make-key amount kinds) 
  (+ (* 10 amount) (length kinds)))

(define (add! amount kinds total)
  (set! table (cons (cons (make-key amount kinds) 
                          total) 
                    table))
  total)

(define (lookup amount kinds)
  (assv (make-key amount kinds) table))

(define (count-change amount)
  (cc amount '(50 25 10 5 1)))

(define (cc amount kinds-of-coins)
  (let ((cached (lookup amount kinds-of-coins)))
    (cond (cached (cdr cached))
          ((= amount 0) 1)
          ((or (< amount 0) (null? kinds-of-coins)) 0)
          (else (add! amount
                      kinds-of-coins
                      (+ (cc (- amount (car kinds-of-coins)) kinds-of-coins)
                         (cc amount (cdr kinds-of-coins))))))))

(count-change 10000)
