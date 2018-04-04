#lang racket
#|
Darren Fitzpatrick - G00311853
Question 2) 

;Applying collatz conjecture to a postive integer and displaying output in a list starting with x and ending at 1.
|#

;Function called collatz-list that takes single positive integer
;applies operation to input until it becomes 1, whilst adding each new iteration to list starting with input  
(define (collatz-list x)
  (cond
    ((= x 1) '(1))                            ;checks if x equals 1, and outputs 1 to list
    ((odd? x)                                 ;adds(cons) x with each recursive step, creating a list with first element is x
                                              ; and ends recursion when original x becomes 1
     (cons x (collatz-list (+ 1 (* 3 x)))))   ;multiply by 3 and 1 if odd
    (else
     (cons x (collatz-list (/ x 2))))))       ;divide by 2 if even

;Check Results
(collatz-list 5) ;Outputs '(5 16 8 4 2 1), it works!
(collatz-list 9) ;Outputs '(9 28 14 7 22 11 34 17 52 26 13 40 20 10 5 16 8 4 2 1)
(collatz-list 2) ;Outputs '(2 1)
