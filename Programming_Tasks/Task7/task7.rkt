#lang racket


;7. Write a function maj in Racket that takes three lists x, y and z of equal length and
;   containing only 0’s and 1’s. It should return a list containing a 1 where two or more
;   of x, y and z contain 1’s, and 0 otherwise.

;maj function that takes 3 lists
(define (maj x y z)
  (cond [(null?  x) '()]                                      ;checks if any lists are empty, returns '() if empty
    [(null?  y) '()]
    [(null?  z) '()]
    [else
      (if(=(car x)(car y))                                    ;checks if first elements in list x and y are equal
         (cons (car x) (maj (cdr x)(cdr y)(cdr z)))           ;adds element to new list and recursively applys maj funct of next element(cdr) in list 
         (if (= (car y) (car z))                              ;checks if first elements in list y and z are equal
             (cons (car y)(maj (cdr x)(cdr y)(cdr z)))        ;adds element to new list and recursively applys maj funct of next element(cdr) in list 
             (cons (car x)(maj (cdr x)(cdr y)(cdr z)))))]))   ;adds element to new list and recursively applys maj funct of next element(cdr) in list 

;If element from x and y are not equal, and element from y and z are not equal it implies x and z are equal.

;Testing
(maj (list 0 0 0 0 1 1 1 1)
     (list 0 0 1 1 0 0 1 1)
     (list 0 1 0 1 0 1 0 1))
;Returns '(0 0 0 1 0 1 1 1)

(maj (list 0 0 0 0 0 0 0 0)
     (list 1 1 1 1 1 1 1 1)
     (list 0 0 1 1 0 0 1 1))  
;Returns '(0 0 1 1 0 0 1 1)