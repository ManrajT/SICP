#lang sicp 

; This question shows some very deep concepts related to orders of growth.  By having an algorithm that repeatedely divides the number of steps required to compute the problem in half
; you end up with logarithmic performance.  This was demonstrated against the problem of computing fibonnaci sequences, which as a tree-recursive algorithm has exponential time
; order.

; This technique needs to be remembered because of how powerful it is.  If there are 1 million steps to execute in the linear form of an algorithm, there would only be 20 steps for
; a logarithmic one.

; I did not actually figure out how to solve the math equation for this question.  It's weird, because you have to substitue and then rearrange the terms such that you can solve
; for both p and q at the same time


; Examples of places where logn growth rates occur is the time it takes to grow a forest, the time it takes human population to reach a certain size, the time it takes for most of a radioactive
; chemical to disappear, the time it takes to download something with torrent, accumulation of cash, growth of a network, generation of ideas, growth of knowledge if learned systematically,
; steps for viruses to spread through a network, steps for knowledge to spread through a network, time to recurse through a tree, searching any search space with a specific pattern, parameter
; estimation of populations, feedback control systems


(define (fib n)
  (fib-iter 1 0 0 1 n))
(define (fib-iter a b p q count)
  (cond ((= count 0) b)
        ((even? count)
         (fib-iter a
                   b
                   (+ (* p p) (* q q))   
                   (+ (* 2 p q) (* q q)) 
                   (/ count 2)))
        (else (fib-iter (+ (* b q) (* a q) (* a p))
                        (+ (* b p) (* a q))
                        p
                        q
                        (- count 1)))))



