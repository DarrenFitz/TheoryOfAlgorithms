#lang racket

;10. Write a function lstq in Racket that takes as arguments two lists l and m of equal
;    length and containing numbers. It should return d, the distance given by the sum of
;    the square residuals between the numbers in the lists:

;    This means take the ith element of m from the ith element of l and square the result for all i. Then add all of those to get d.

;Function lstq that takes two lists
(define (lstq l m)                                     
  (cond ((null? l)(null? m) 0)                         ;checks if list are empty and outputs 0
        ((+ (* (- (car l)(car m))(- (car l)(car m)))   ;takes first element(car) of m from l and squares it, then sums it
           (lstq (cdr l)(cdr m))))))                   ;recursive function to repeat step


;Testing
(lstq (list 4.5 5.1 6.2 7.8) (list 1.1 -0.1 6.1 3.8))  ;Returns: 54.61
(lstq (list 8 4) (list 4 2))                           ;Returns: 20

