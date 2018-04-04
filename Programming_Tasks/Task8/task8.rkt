#lang racket
#|
Darren Fitzpatrick - G00311853

Question 8)

Write a function chse in Racket that takes three lists x, y and z of equal length and
containing only 0’s and 1’s. It should return a list containing the elements of y in
the positions where x is 1 and the elements of z otherwise.
|#

;chse function that takes 3 lists
(define (chse x y z)
  (cond [(null?  x) '()]                                  ;checks if any lists are empty, returns '() if empty
    [(null?  y) '()]
    [(null?  z) '()]
    [else
      (if(= 1 (car x))                                    ;check if element in list x is 1
         (cons (car y)(chse (cdr x)(cdr y)(cdr z)))       ;adds element from y to new list and recursively applys chse funct to next element(cdr) in list 
         (cons (car z)(chse (cdr x)(cdr y)(cdr z))))]))   ;adds element from z to new list and recursively applys chse funct to next element(cdr) in list


;Testing
(chse (list 0 0 0 0 1 1 1 1)(list 0 0 1 1 0 0 1 1)(list 1 0 1 0 1 0 1 0)) ;Returns  '(0 0 0 1 0 1 1 1)

(chse (list 0 0 0 0 0 0 0 0)(list 1 1 1 1 1 1 1 1)(list 1 1 1 1 0 0 0 0)) ;Returns  '(1 1 1 1 0 0 0 0)