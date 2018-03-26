## Task 10

<p><img src="https://github.com/DarrenFitz/TheoryOfAlgorithms/blob/master/Resources/10.PNG" width="816" height="284"></p>

### Approach to Algorithm for Task
First we need to understand what the notation does to our input:

* Start with two list l and m of equal length and containing numbers.
* Minus first(car) corresponding elements in m from l.
* Square the result of this by multiplying it by itself.
* Repeat process to next element by calling recursive function to rest(cdr) of list.


### Solution
All Comments are in [task10.rkt](https://github.com/DarrenFitz/TheoryOfAlgorithms/blob/master/Programming_Tasks/Task10/task10.rkt ) file.
```Racket
;Function lstq that takes two lists
(define (lstq l m)                                     
  (cond ((null? l)(null? m) 0)                       
        ((+ (* (- (car l)(car m))(- (car l)(car m)))
           (lstq (cdr l)(cdr m))))))  

```

