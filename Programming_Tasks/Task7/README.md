## Task 7

<p><img src="https://github.com/DarrenFitz/TheoryOfAlgorithms/blob/master/Resources/7.PNG" width="851" height="158"></p>

### Algorithm for Task
This can be solved by comparing 3 lists, 2 at a time. Compare x and y, then y and z. If x and y are equal conditions are met(2 or more), and return value. If x and y nor y and z equal we can assume x and z equal, because we only dealing 2 possible numbers(0 and 1). 

### Approach?
* Assume lists are equal length and if none are empty you can start.
* Having only 1's and 0's in lists, I checked matching elements from x and y were equal.
* If equal that element was added to a new list(cons).
* Since comparing 3 elements of lists x, y, z; if 2/3 are same they are added to list.
* Recursively applys maj funct to remaining(cdr) elements in list. 
* I checked matching elements from y and z were equal.
* If equal that element was added to a new list(cons).
* Recursively applys maj funct to remaining(cdr) elements in list. 
* If element from x and y are not equal, and element from y and z are not equal it implies x and z are equal.


### Solution
All Comments are in [task7.rkt](https://github.com/DarrenFitz/TheoryOfAlgorithms/blob/master/Programming_Tasks/Task7/task7.rkt ) file.
```Racket
;maj function that takes 3 lists
(define (maj x y z)
  (cond [(null?  x) '()]
    [(null?  y) '()]
    [(null?  z) '()]
    [else
      (if(=(car x)(car y))
         (cons (car x) (maj (cdr x)(cdr y)(cdr z)))
         (if (= (car y) (car z))
             (cons (car y)(maj (cdr x)(cdr y)(cdr z)))
             (cons (car x)(maj (cdr x)(cdr y)(cdr z)))))]))

```
