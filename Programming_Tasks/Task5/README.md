## Task 5

<p><img src="https://github.com/DarrenFitz/TheoryOfAlgorithms/blob/master/Resources/5.PNG" width="834" height="136"></p>


### What is Hamming Weight? 
The Hamming weight of a string is the number of symbols that are different from the zero-symbol of the alphabet used. It is thus equivalent to the Hamming distance from the all-zero string of the same length. For the most typical case, a string of bits, this is the number of 1's in the string, or the digit sum of the binary representation of a given number and the ℓ norm of a bit vector. In this binary case, it is also called the population count, popcount, sideways sum, or bit summation.

### Algorithm for Task
For this algorithm it's relatively straight forward, I need to recursively check each number in the list and check if they are not 0, therefore they are 1 and increment by +1. When list has been checked out put one.

###
* Check list is empty if so out put 0
* Check that the answer is not = 0, incrementally add 1 and recursively call function on rest(cdr) of list to be checked
* If not move to next element by call recursive function of cdr of l.
* At the end of the list return the value.

### Solution
`All Comments are in [task5.rkt](https://github.com/DarrenFitz/TheoryOfAlgorithms/blob/master/Programming_Tasks/Task5/task5.rkt) file.`
```Racket
;Hamming-weight Function
;Used to return number of non-zero elements in list
(define (hamming-weight l)               
  (cond ((empty? l) 0)                   
        ((not(= (car l)0))               
         (+ 1 (hamming-weight (cdr l))))
        (else(hamming-weight (cdr l)))))
    )))

```

## References
* [Hamming Weight](https://en.wikipedia.org/wiki/Hamming_weight)