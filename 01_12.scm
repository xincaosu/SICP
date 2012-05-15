;Exercise 01.12
(define (pascal-triangle row col)
 (cond ((< row col) 0)
       ((or (= col 1) (= row col)) 1)
       (else (+ (pascal-triangle (- row 1) col)
                (pascal-triangle (- row 1) (- col 1))))))

(pascal-triangle  5 3)
;output: 6
