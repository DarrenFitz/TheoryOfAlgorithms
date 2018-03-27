## Task 9

<p><img src="https://github.com/DarrenFitz/TheoryOfAlgorithms/blob/master/Resources/9.PNG" width="855" height="187"></p>

### Algorithm for Task
For this algorithm, we need to get remainder of the sum of corresponding elements in the 3 lists when divided by 2. We use the **modulo** function to tells us if the number is odd or even. For sum that is odd numbers we add 1 otherwise we add 0 to list.

### Approach?
* Check if any list are empty and return '().
* Sum all first(car) elements in lists, get remainder this when divided by 2.
* If answer is 0 its even, then add(cons) 0 to list and recurse to next element(cdr).
* If answer is 1 its odd, then add(cons) 0 to list and recurse to next element(cdr).

### Solution
All Comments are in [task9.rkt](https://github.com/DarrenFitz/TheoryOfAlgorithms/blob/master/Programming_Tasks/Task9/task9.rkt ) file.
```Racket
;Function sod2 that takes 3 lists
(define (sod2 x y z)
  (cond [(null?  x) '()]
    [(null?  y) '()]
    [(null?  z) '()]
    [else
      (if(=(modulo (+ (car x)(car y)(car z)) 2) 0)        
             (cons 0 (sod2 (cdr x)(cdr y)(cdr z)))
             (cons 1 (sod2 (cdr x)(cdr y)(cdr z))))]))

```
## References
* [Modulo](https://docs.racket-lang.org/reference/generic-numbers.html#%28def._%28%28quote._~23~25kernel%29._modulo%29%29)

