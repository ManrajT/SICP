#lang sicp

; This problem was a little harder than I expected, because I found it harder to think through the behaviour of the recursive procedure calls
; For example, initial I missed the equal to portion of greater than equal to and this caused a contract violation when
; + operation is applied to void operation.  Another example is that the iterative process goes to different values when the initial
; parameters are different (ie. 0 1 2 vs 1 2 3), which produces no obvious signal that something has gone wrong.

; Comparing this way of coding to the tdd, java coding I do at work, you can see that professional coding is really about being able
; to control the output of a process through rigid constructs and focus on readability.



; Recursive
(define (f1 n)
   (cond ((< n 3) n)
         ((>= n 3) (+ (f1 (- n 1))
                      (* 2 (f1 (- n 2)))
                      (* 3 (f1 (- n 3)))))

         )
  )

; Iterative
(define (f2 n)
   (define (f2-iter a b c counter)
     (cond ((= counter n) (+ (* 3 a)
                             (* 2 b)
                             c))
           (else (f2-iter b c (+ (* 3 a)
                                 (* 2 b)
                                 c) (+ counter 1)))))
   (cond ((< n 3) n)
         ((>= n 3) (f2-iter 0 1 2 3))))


(f2 10)
(f1 10)
