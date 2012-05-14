;Exercise 01.07
;��С�������������ʱ�򣬽�������кܴ����
;�ܴ�������������ʱ�����ڶ�ʧС���ľ��ȣ����¡�good-enough?���޷����㣬����������ѭ����
;������ĳ��򣬶��ںܴ�ͺ�С���������ܺܺõ���Ӧ��

(define (improve guess x)
  (/ (+ guess
        (/ x guess))
     2))

(define (good-enough? old-guess guess x)
  (< (abs (- guess old-guess))
     (* old-guess 0.000001)))

(define (sqrt-iter old-guess guess x)
  (if (good-enough? old-guess guess x)
      guess
      (sqrt-iter guess (improve guess x) x)))

(define (sqrt x)
  (sqrt-iter 1.0 2.0 x))

(sqrt 99885135774567536478842341656.0)
