#lang sicp

; I found this exercise very satisfying to complete.  It showed how we can use a simple fact, that (b^2)^(n/2) = b^2, to repeatedly divide the problem of exponentiation to get a logarithmic run time.  You just repeatedly square the base, each time dividing
; the number of exponentiation in half.  The trick to making this iterative is to write out the iterations one by one, and show how the state variables change from one call to the next.   It's a little bit tricky because one state variable needs to be
; used as both a place holder for remainded when you can't square base (ie. when exponent is uneven) and also as the result that gets returend back because you need a base case which happens to be same as the remaineder when you can't square the base

; The fact that this little piece of code can calculate extremely high exponents within milliseconds is phenomenal.  Favourite exercise so far. 


(define (even? a)
  ( = (remainder a 2) 0))

(define (square a)
  (* a a)) 

(define (fast-expt b n)
  (define (fast-expt-iter b n a)
    (cond (( = n 0) a)
          ((even? n) (fast-expt-iter (square b) (/ n 2) a ))
          (else (fast-expt-iter b (- n 1) ( * a b))))) 
  (fast-expt-iter b n 1))