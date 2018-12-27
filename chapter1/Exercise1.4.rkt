#lang racket
; The behaviour of the function is the conditional expression will be executed 
; first, and if b is greater than 0 it will be added, while if it is less than
; 0 it will be subtracted.  Therefore the function will always add the absolute
; value of b.

; This is really cool that you can return functions from a function, like in
; javascript.  I can see write away how first class functions can reduce a lot
; of boilerplate by allowing flexibility in situations like this. 
