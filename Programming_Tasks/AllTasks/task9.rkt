#lang racket
#|
Darren Fitzpatrick - G00311853

Question 9)

Write a function sod2 in Racket that takes three lists x, y and z of equal length and
containing only 0’s and 1’s. It should return a list containing a 1 where the number of
1’s in a given position in x, y and z contains an odd nubmer of 1’s, and 0 otherwise.
|#

;function sod2 that takes 3 lists
(define (sod2 x y z)
  (cond [(null?  x) '()]                                ;checks if any lists are empty, returns '() if empty
    [(null?  y) '()]
    [(null?  z) '()]
    [else
      (if(=(modulo (+ (car x)(car y)(car z)) 2) 0)      ;check if sum of first elements divided by 2 equals zero, if so sum is even                  
             (cons 0 (sod2 (cdr x)(cdr y)(cdr z)))      ;if sum is even add 0 to new list and recursively applys sod2 funct to next element(cdr) in list 
             (cons 1 (sod2 (cdr x)(cdr y)(cdr z))))]))  ;if sum is odd add 1 to new list and recursively applys sod2 funct to next element(cdr) in list 

;Testing
(sod2 (list 0 0 0 0 1 1 1 1)(list 0 0 1 1 0 0 1 1)(list 0 1 0 1 0 1 0 1)) ;Returns  '(0 1 1 0 1 0 0 1)
(sod2 (list 1 1 1 1 1 1 1 1)(list 1 1 1 1 1 1 1 1)(list 0 1 0 1 0 1 0 1)) ;Returns  '(0 1 0 1 0 1 0 1)
