## Task 6

<p><img src="Resources/6.png width="814" height="128"></p>


### What is Hamming Distance? 
In information theory, the Hamming distance between two strings of equal length is the number of positions at which the corresponding symbols are different. In other words, it measures the minimum number of substitutions required to change one string into the other, or the minimum number of errors that could have transformed one string into the other.


### Solution
```Racket
;Hamming-Distance Function
;Used to return number of positions in lists that differ
(define (hamming-distance lst1 lst2)               
  (cond ((null? lst1) (null? lst2) 0)                     
        ((not(= (car lst1) (car lst2)))                   
         (+ 1 (hamming-distance (cdr lst1) (cdr lst2))))  
        (else(hamming-distance (cdr lst1) (cdr lst2)))))

```

## References
* [Hamming Distance](https://en.wikipedia.org/wiki/Hamming_distance)