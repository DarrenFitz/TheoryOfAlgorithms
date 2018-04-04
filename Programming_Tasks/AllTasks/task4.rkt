#lang racket
#|
Darren Fitzpatrick - G00311853

Question 4)

Write a function sublsum in Racket that takes a list (of integers) as input and returns
a list of sublists of it that sum to zero. For this problem, you can use the
combinations built-in function. Note the order of the sublists and their elements
doesn’t matter.
|#

;mySum Function
;used to sum elements in each sublist
(define (mySum l)                     ;defines function and sets parameters
 (if(null? l) 0                       ;check if the list is empty
   (+ (car l)(mySum (cdr l)))))       ;recursion adding all numbers in list/sublist

;sublsum Function
;finds any sublist that sum to zero and outputs them
(define (sublsum l)
  (for ([i (combinations l)])         ;for loop iterates through each sublist that (combinations l) provided
    (if (= (mySum i) 0)               ;using mySum function checks if sublist sums to 0
        (println i)                   ;prints if = 0
        '()
    )))


;Testing
(sublsum (list 1 2 3 4 -5))
(sublsum (list 1 2 3 4 5))
(sublsum (list 1 2 -3 -4 5 6))

