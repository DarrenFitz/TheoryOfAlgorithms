#lang racket
#|
Darren Fitzpatrick - G00311853

Question 5)

Write a function hamming-weight in Racket that takes a list l as input and returns
the number of non-zero elements in it.
|#

;hamming-weight Function
;used to return number of non-zero elements in list
(define (hamming-weight l)               
  (cond ((empty? l) 0)                   ;checks if list is empty
        ((not(= (car l)0))               ;checks if element is non-zero
         (+ 1 (hamming-weight (cdr l)))) ;if it is non zero add 1 and recur
        (else(hamming-weight (cdr l))))) ;else go to next element 


;Testing
(hamming-weight (list 1 0 1 0 1 1 1 0))  ;returns 5
(hamming-weight (list 0 0 0 0 0 0))      ;returns 0
