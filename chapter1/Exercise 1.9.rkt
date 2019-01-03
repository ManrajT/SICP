#lang sicp

;Procedure 1
;
;(define (+ a b)
;  (if (= a 0)
;      b
;      (inc (+ (dec a) b))))
;
;
;Procedure 1 is a recursive process.  We know it is a recursive procedure because
;the function is called within itself.  We know it is a recursive process because
;it exhibits an expanding and contracting call stack, that shows nests/chains of
;deferred operations


(+ 4 5)
(inc (+ (dec 4) 5) )
(inc (+ 3 5) )  ; evaluate argument 1
(inc (inc (+ (dec 3) 5) ) )  ; evaluate + operator
(inc (inc (+ 2 5) ) ) ; evaluate argument 1 
(inc (inc (inc (+ (dec 2) 5) ) ) ) ; evaluate + operator 
(inc (inc (inc (+ 1 5) ) ) ) ; evaluate argument 1 
(inc (inc (inc (inc (+ (dec 1) 5) ) ) ) ) ; evaluate + operator
(inc (inc (inc (inc (+ 0 5) ) ) ) ) ; evaluate argument 1
(inc (inc (inc (inc (5) ) ) ) ) ; evaluate operator +.  BASE CASE!!
(inc (inc (inc (6) ) ) ) ; evaluate incr
(inc (inc (7) ) ) ; evaluate incr
(inc (8) ) ; evaluate incr
(9) ; evaluate incr



;Procedure 2
;
;(define (+ a b)
;  (if (= a 0)
;      b
;      (+ (dec a) (inc b))))
;
;
;Procedure 2 is an interative process.  We know it is NOT a recursive process because it does not show an expanding/contracting calls stack
;or a chain of deferred operations.  We know it is an iterative process because evolution of process can be defined through state variable
;changes across procedure calls


(+ 4 5)
(+ (dec 4) (inc 5)) ; evaluate + operator 
(+ (3) (6))  ; evaluate arguments  
(+ (dec 3) (inc 6)) ; evaluate + operator
(+ (2) (7))  ; evaluate arguments
(+ (dec 2) (inc 7)) ; evaluate + operator
(+ (1) (8))  ; evaluate arguments
(+ (dec 1) (inc 8)) ; evaluate + operator
(+ (0) (9))  ; evaluate arguments
(9) ; Base CASE