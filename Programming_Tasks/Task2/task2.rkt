#lang racket
;Applying collatz conjecture to a postive integer and displaying output in a list starting with x and ending at 1.

;Function called collatz-list that takes single positive integer
(define (collatz-list x)
  (cond
    ;checks if x equals 1, and outputs 1 to list
    ((= x 1) '(1))
    ;cons x with each recursive step,
    ;creating a list with first element is x end recursin when original x is 1
    ;multiply by 3 and 1 if odd
    ((odd? x)
     (cons x (collatz-list (+ 1 (* 3 x)))))
    ;divide by 2 if even
    (else
     (cons x (collatz-list (/ x 2))))))

;Check Results
(collatz-list 5) ;Outputs '(5 16 8 4 2 1), it works!
(collatz-list 9)
(collatz-list 2)