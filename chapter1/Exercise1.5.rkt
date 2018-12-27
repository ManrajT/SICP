#lang racket
; The difference between normal order evaluation and applicative order evaluation
; is that normal order will fully expand all expressions then evaluate the resulting
; primitive expressions at the end, while applicative order evaluation will evaluate
; expressions before substituting them into compound expressions and applying them

; In this exercise, you will get into an infinite loop if p is called, or will get a
; 0 returned if it is not called.  In normal order evaluation you will not try to evaluate
; p at the beginning.  Consequently, if 0 is returned it means you are using normal o
; order evaluation. 
