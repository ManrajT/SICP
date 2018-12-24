#lang racket

; This problem taught the use of conditionals in scheme.  It also reminded
; me that parameters are beside procedure call, rather than within parenthesis

; An important edge case to recognize when there is not two values greater than
; the third.  For example,  2 2 4 or 2 2 2.  I've defined the function to take
; either when there is a tie. 


(define (sumSquaresOfLargestTwo a b c)
  (define (square x) (* x x))
  (cond ((and (<= a b) (< a c)) (+ (square b) (square c )))
        ((and (<= b c) (< b a)) (+ (square a) (square c)))
        ((and (<= c a) (< c b)) (+ (square a) (square b)))
        (else (+ (square a) (square b))))
  )