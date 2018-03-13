#lang racket

;3. Write, from scratch, two functions in Racket. The first is called lcycle. It takes a
;   list as input and returns the list cyclically shifted one place to the left. The second
;   is called rcycle, and it shifts the list cyclically shifted one place to the right.



;Create myAppend function to to append two lists together
(define (myAppend lst1 lst2)
  (if (null? lst1)                                      ;if a list is empty return other list, there is nothing to append
      lst2
  (cons (car lst1) (myAppend (cdr lst1) lst2))))        ;recursively adds elements in lst1 to head of new list


;lcycle function shifts list cyclically left one place
(define (lcycle x)                                      ;if list empty return '()
  (if (null? x)
      '()
  (myAppend (cdr x) (list (car x)))))                   ;add first element (car) of list to end list (cdr)
                                                        ;append '(1) to end of '(2 3 4 5)


;Adapted from - https://stackoverflow.com/questions/4092113/how-to-reverse-a-list
;Create a function myReverse to reverse a string
(define (myReverse r)                                   ;if list empty return '()
  (if (null? r)
      '()
      (myAppend (myReverse (cdr r))(list (car r)))))    ;call reverse funct with (cdr r) which is tail of list
                                                        ;append that first element (car l) that you make as a list, so order is reversed 

;rcycle function shifts list cyclically right one place
(define (rcycle x)
  (if (null? x)
      '()                           
  (myReverse (lcycle (myReverse x)))))                  ;reverse list to '(5 4 3 2 1)
                                                        ;apply lcycle to list, then reverse it
                                                        ;'(4 3 2 1 5) => '(5 4 3 2 1)

;Testing
(lcycle (list 1 2 3 4 5))                               ;returns '(2 3 4 5 1)
(lcycle (list 2 4 6 8))                                 ;returns '(4 6 8 2)
(rcycle (list 1 2 3 4 5))                               ;returns '(5 1 2 3 4)
(rcycle (list 2 4 6 8))                                 ;returns '(8 2 4 6)


