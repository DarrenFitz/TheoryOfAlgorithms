## Task 4

<p><img src="https://github.com/DarrenFitz/TheoryOfAlgorithms/blob/master/Resources/4.PNG" width="805" height="238"></p>

### Combinations Function? 
Return a list of all combinations of elements in the input list (aka the powerset of lst). If size is given, limit results to combinations of size elements.

### Algorithm for Task
As we are allowed to use the built-in combination feature I will need another function be able to sum the elements of its sublists. The sublsum function will loop through and return any sublist where its elements sum to 0.

### Approach?
* Create mySum function that sums first element(car) to next first element of the rest of list(cdr) using recursive function.
* The sublsum function uses a for loop to check if any sublist sum to zero calling the summed values from mySum
* Sublist is printed if any sublist sums to 0.

### Solution
All Comments are in [task4.rkt](https://github.com/DarrenFitz/TheoryOfAlgorithms/blob/master/Programming_Tasks/Task4/task4.rkt ) file.
```Racket
;mySum Function
;used to sum elements in each sublist
(define (mySum l)
 (if(null? l) 0
   (+ (car l)(mySum (cdr l)))))

;sublsum Function
;finds any sublist that sum to zero and outputs them
(define (sublsum l)
  (for ([i (combinations l)])
    (if (= (mySum i) 0)
        (println i)
        '()
    )))

```

## References
* [Racket Combinations](https://docs.racket-lang.org/reference/pairs.html#%28def._%28%28lib._racket%2Flist..rkt%29._combinations%29%29)
