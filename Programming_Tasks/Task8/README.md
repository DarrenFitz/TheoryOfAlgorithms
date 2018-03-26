## Task 8

<p><img src="https://github.com/DarrenFitz/TheoryOfAlgorithms/blob/master/Resources/8.PNG" width="854" height="157"></p>

### Algorithm for Task
This solution is fairly simple to approach. We need to check each element in list x and if its a 1 return corresponding element from the list y, else return corresponding element from the list z. 

### Approach?
* Check if any list are empty and return '().
* Check if first element(car) of x was equal to 1.
* If equal 1 add first element(car) from list y to a new list and repeat process on the next element by calling recursive function on the rest(cdr) of the list elements.
* Else add first element(car) from list z to a new list and repeat process on the next element by calling recursive function on the rest(cdr) of the list elements.

### Solution
All Comments are in [task8.rkt](https://github.com/DarrenFitz/TheoryOfAlgorithms/blob/master/Programming_Tasks/Task8/task8.rkt ) file.
```Racket
;chse function that takes 3 lists
(define (chse x y z)
  (cond [(null?  x) '()]
    [(null?  y) '()]
    [(null?  z) '()]
    [else
      (if(= 1 (car x))
         (cons (car y)(chse (cdr x)(cdr y)(cdr z))) 
         (cons (car z)(chse (cdr x)(cdr y)(cdr z))))])) 

```

