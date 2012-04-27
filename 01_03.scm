;Exercise 01.03
(define (sum_of_squares m n)
  (+ (square m) (square n)))

(define (foo x y z)
  (if (>= x y)
      (sum_of_squares x 
                      (if (> y z) y z))
      (sum_of_squares y
                      (if (> x z) x z))))

;Test
(foo 3 4 2)
;Output: 25
