## Task 5

<p><img src="https://github.com/DarrenFitz/TheoryOfAlgorithms/blob/master/Resources/5.PNG" width="834" height="136"></p>


### What is Hamming Weight? 
The Hamming weight of a string is the number of symbols that are different from the zero-symbol of the alphabet used. It is thus equivalent to the Hamming distance from the all-zero string of the same length. For the most typical case, a string of bits, this is the number of 1's in the string, or the digit sum of the binary representation of a given number and the ℓ norm of a bit vector. In this binary case, it is also called the population count, popcount, sideways sum, or bit summation.


### Solution
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