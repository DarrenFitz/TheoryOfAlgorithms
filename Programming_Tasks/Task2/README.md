## Task 2

<p><img src="Resources/2.png width="820" height="384"></p>


### What is Collatz conjecture? 
The Collatz conjecture is a conjecture in mathematics that concerns a sequence defined as follows: start with any positive integer n. Then each term is obtained from the previous term as follows: if the previous term is even, the next term is one half the previous term. Otherwise, the next term is 3 times the previous term plus 1. The conjecture is that no matter what value of n, the sequence will always reach 1.


### Solution
```Racket
(define (collatz-list x)
  (cond
    ((= x 1) '(1))
    ((odd? x)
     (cons x (collatz-list (+ 1 (* 3 x)))))
    (else
     (cons x (collatz-list (/ x 2))))))
```

## References
* [Collatz Conjecture)](https://en.wikipedia.org/wiki/Collatz_conjecture)
