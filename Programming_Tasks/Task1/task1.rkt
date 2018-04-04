#lang racket
#|
Darren Fitzpatrick - G00311853

Question 1) 

Write, from scratch, a function in Racket that uses a brute-force algorithm that takes
a single positive integer and return true if the number is a prime and false otherwise.
Call the function decide-prime.

Adapted from https://stackoverflow.com/questions/3345626/finding-a-prime-number-in-scheme-using-natural-recursion?rq=1
|#

;Function called decide-prime with an integer of x
;Used to decide if number is true of false
(define (decide-prime x)                               
  (define (indivisible-by a b)                 ;indivisible funct used to check x is only divisable by 1 and itself 
    (cond                       
     ((= b 1) #T)                              ;if b = 1, proving x only divisable by 1 and itself
     (else (if(= (modulo a b) 0)
          #F
          (indivisible-by a (- b 1)))))) 
  (if (= x 1)                                  ;If prime is equal to 1 return false, 1 is not a prime number
      #F                                       ;else -1 from x
      (indivisible-by x (- x 1))))             ;check every number from x to 1 to prove only they are divisable into x, therefore prime

;Decide if prime
(decide-prime 1)  ; #F because 1 isn't a prime
(decide-prime 2)  ; #T 
(decide-prime 3)  ; #T
(decide-prime 10) ; #F
(decide-prime 47) ; #T