#lang racket
; If they define their own if statement using a wrapper around cons, the
; sqrt root function will never finish executing because expressions will always
; be executed before the predicate for evaluating base case for recursion. 

; the if statement is special. 