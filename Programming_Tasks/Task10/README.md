## Task 10

<p><img src="Resources/10.png" width="816" height="284"></p>



### Solution
```Racket
;Function lstq that takes two lists
(define (lstq l m)                                     
  (cond ((null? l)(null? m) 0)                       
        ((+ (* (- (car l)(car m))(- (car l)(car m)))
           (lstq (cdr l)(cdr m))))))  

```

## References
* [Hamming Distance](https://en.wikipedia.org/wiki/Hamming_distance)