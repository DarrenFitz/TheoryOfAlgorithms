#lang racket
#|
Darren Fitzpatrick - G00311853

Question 6)
Write a function hamming-distance in Racket that takes two lists and returns the
number of positions in which they differ.
|#

;Hamming-Distance Function
;Used to return number of positions in lists that differ
(define (hamming-distance lst1 lst2)               
  (cond ((null? lst1) (null? lst2) 0)                     ;checks if the lists are empty
        ((not(= (car lst1) (car lst2)))                   ;compares elements in lists, check if they differ
         (+ 1 (hamming-distance (cdr lst1) (cdr lst2))))  ;if they differ, add 1 and recur
        (else(hamming-distance (cdr lst1) (cdr lst2)))))  ;else go to next elements in each list


;Testing
(hamming-distance (list 1 0 1 0 1 1 1 0) (list 1 1 1 1 0 0 0 0 ))  ;returns 5
(hamming-distance (list 1 1 1 1 0 0 0 0) (list 0 0 0 0 1 1 1 1 ))  ;returns 8, all differ
(hamming-distance (list 1 1 1 1) (list 1 1 1 1))                   ;returns 0 , none differ
