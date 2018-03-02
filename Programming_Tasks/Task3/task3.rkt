#lang racket

;First function called lcycle.
(define (lcycle x)
  ;if list empty return '()
  (if (null? x)
      '()
  ;add first element (car) of list to end list (cdr)
  ;append '(1) to '(2 3 4 5)
  (append (cdr x) (list (car x)))))

;Second function called rcycle
(define (rcycle x)
  (if (null? x)
      '()
  ;reverse list to '(5 4 3 2 1)
  ;perform lcycle to list, then reverse it
  ;'(4 3 2 1 5) => '(5 4 3 2 1)
  (reverse (lcycle (reverse x)))))

(lcycle (list 1 2 3 4 5))
(rcycle (list 1 2 3 4 5))