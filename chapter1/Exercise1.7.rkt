#lang sicp
(define (sqrt x)
  (sqrt-iter 1.5 1.0 x))

(define (sqrt-iter priorGuess currentGuess x)
  (if (good-enough? priorGuess currentGuess)
      currentGuess
      (sqrt-iter currentGuess (improve currentGuess x) x)))

(define (good-enough? priorGuess currentGuess)
  (< (abs (- priorGuess currentGuess)) 0.0001))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

;This works well.  No numerical stability issues
(sqrt 1000000000000000)

;This works well.  No numerical stability issues
(sqrt 0.00001)


;This is no longer working well.  Numerical stability issues are being found.  Ways to mitigate numerical stability issues include
; increasing the precision of numbers and avoiding operations that make intermediate operations explode and consequently get rounded down. 
(sqrt 0.0000001)




