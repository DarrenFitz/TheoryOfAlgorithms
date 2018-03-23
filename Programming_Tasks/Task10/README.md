## Task 10

<p><img src="https://github.com/DarrenFitz/TheoryOfAlgorithms/blob/master/Resources/10.PNG" width="816" height="284"></p>



### Solution
```Racket
;Function lstq that takes two lists
(define (lstq l m)                                     
  (cond ((null? l)(null? m) 0)                       
        ((+ (* (- (car l)(car m))(- (car l)(car m)))
           (lstq (cdr l)(cdr m))))))  

```

