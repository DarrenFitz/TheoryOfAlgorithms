#lang racket

;Question 1
;========================================
;a
(*(+(/ 10 5)5)3)

;b
(+ 2 3 4 5)

;c
(+(+(+(/ 10 3)1)5)2)

;d
(+(+(+(/ 10 3.0)1)5)2)

;e
(*(+ 3 5)(/ 10 2))

;f
(+ (*(+ 3 5)(/ 10 2)) (+(+(+(/ 10 3)1)5)2) )


;Question 2
;========================================
(define (discount x y)(- x (*(/ x 100 ) y)))

(discount 10 5)
(discount 29.90 50)


;Question 3
;========================================
(define (grcomdiv x y)
  (if (= y 0)
       x
       (grcomdiv y (remainder x y))))

(grcomdiv 10 15)
(grcomdiv 64 30)


;Question 4
;========================================
(define (appearances x y)
  (count (lambda (val) (= val x)) y))

(appearances 2 '(2 2 2 2 3 4 5 6))


;Question 5
;========================================
(define (inter a b)
  (if (null? a)
  null
  (if(member (car a) b)
  (cons (car a) (inter (cdr a) b))
  (inter (cdr a) b))))

(define x (list 2 4 6 8 10))
(define y (list 1 2 3 4 5))
(inter x y)

;Question 6
;========================================
(define (noatoms x)
  (if (null? x)
      0
      (+ 1 ( noatoms (cdr x)))))

(define a (list 1 2 3 4 5))
(noatoms a )

;Question 7
;========================================
;n is always increasing and therfore will never finish, it
;causes program to run out of memory.
;(define (forever n)
;  (if (= n 0)
;      1
;      (+ 1 (forever n))))
;
;(forever 2)

;Question 8
;========================================
(define (range n)
    (define (loop i)
      (if (= i n)
          '()
          (cons (+ i 1) (loop (+ i 1)))))
    (loop 0))

 (range 8)

;Question 9
;========================================
(define (reversel n)
  (if (= n 0)
      null
      (cons n (reversel (- n 1)))))

(reversel 8)

;Question 10
;========================================
(define (sum-multiples a b end)
  (define (sum-of-multiple x)
    (for/fold ((sum 0))
              ((i (in-range 0 end x)))
    (+ sum i)))
  (-(+(sum-of-multiple a)(sum-of-multiple b))
    (sum-of-multiple (lcm a b))))
  
       
(sum-multiples 3 5 1000)