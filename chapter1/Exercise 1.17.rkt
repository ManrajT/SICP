#lang sicp 

; Easy problem.  Just like prior one.  


(define (double a)
  (+ a a) )

(define (half a)
  (/ a 2) )

(define (even? n)
  (= (remainder n 2) 0))



(define (fast-multiply b n)
   (define (fast-multiply-iter b n a)
     (cond ((= n 0) a)
           ((even? n) (fast-multiply-iter (double b) (half n) a))
           (else (fast-multiply-iter b (- n 1) (+ a b) ) )
           ))
  (fast-multiply-iter b n 0))




