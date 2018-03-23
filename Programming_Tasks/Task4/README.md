## Task 4

<p><img src="Resources/4.png width="805" height="238"></p>


### Combinations Function? 
Return a list of all combinations of elements in the input list (aka the powerset of lst). If size is given, limit results to combinations of size elements.


### Solution
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
* [Racket Combinations)](https://docs.racket-lang.org/reference/pairs.html#%28def._%28%28lib._racket%2Flist..rkt%29._combinations%29%29)
