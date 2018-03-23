## Task 7

<p><img src="Resources/7.png" width="851" height="158"></p>


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
