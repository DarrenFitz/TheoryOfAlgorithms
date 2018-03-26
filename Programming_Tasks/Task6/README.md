## Task 6

<p><img src="https://github.com/DarrenFitz/TheoryOfAlgorithms/blob/master/Resources/6.PNG" width="814" height="128"></p>


### What is Hamming Distance? 
In information theory, the Hamming distance between two strings of equal length is the number of positions at which the corresponding symbols are different. In other words, it measures the minimum number of substitutions required to change one string into the other, or the minimum number of errors that could have transformed one string into the other.

### Algorithm for Task
For this algorithm it's relatively straight forward, it similar to task5. We need to compare the first element in each string and check if they are not the same and then count how many time this occurs.

### Approach?
* Create hamming-distance that lake two list, assuming same length and only using 1's or 0's.
* Compare the first element(car) of each list to see if they are not the same.
* If not equal increment by +1 and apply same principal to next element by calling recursive function.
* Otherwise call hamming-distance to the rest of list(cdr) to repeat process.

### Solution
All Comments are in [task6.rkt](https://github.com/DarrenFitz/TheoryOfAlgorithms/blob/master/Programming_Tasks/Task6/task6.rkt ) file.
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