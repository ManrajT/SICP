#lang sicp

; On the surface, this problem is simply changing squares to cubes in procedure definitions and calls, and changing the improve function to use the new approximation algorithm.
; While testing it out, I found the cbrt-iter function being called infinitely because recursive base case of good-enough? was never being met.  I changed it to use a more numerically stable
; algorithm.  

(define (cbrt x)
  (cbrt-iter 1.5 1.0 x))

(define (cbrt-iter priorGuess currentGuess x)
  (if (good-enough? priorGuess currentGuess)
      currentGuess
      (cbrt-iter currentGuess (improve currentGuess x) x)))

(define (good-enough? priorGuess currentGuess)
  (< (abs (- priorGuess currentGuess)) 0.001))

(define (improve guess x)
   / (+ (/ x (square guess)) (* 2 guess)) 3)

(define (cube x)
   (* x (* x x) ) )

(define (square x)
   (* x x) )






