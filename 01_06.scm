;Exercise 01.06
;�������Ӧ���򣬳����������ѭ������Ϊ��new-if�����߱���·���ܣ����³����е�
;��(sqrt-iter (improve guess x) x����Ϊ������������չ����
;�������Ӧ��������ĳ��ʱ��ġ�cond��������·���Ӷ�������ѭ����
;������Ժ͡�Exercise 01.05��һ��Ա�˼����

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (improve guess x)
  (/ (+ guess
        (/ x guess))
     2))

(define (good-enough? guess x)
  (< (abs (- x (* guess guess)))
     0.001))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))

(define (sqrt x)
  (sqrt-iter 1 x))

(sqrt 1)
