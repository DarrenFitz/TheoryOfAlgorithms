## Task 1

1. Write, from scratch, a function in Racket that uses a brute-force algorithm that takes
a single positive integer and return true if the number is a prime and false otherwise.
Call the function decide-prime.

### What is brute-force algorithm? 
In computer science, brute-force search or exhaustive search, also known as generate and test, is a very general problem-solving technique that consists of systematically enumerating all possible candidates for the solution and checking whether each candidate satisfies the problem's statement.

### What is a prime Number?
A number that is divisible only by itself and 1 (e.g. 2, 3, 5, 7, 11).

### Solution
```Racket
(define (decide-prime x)
  (define (indivisible-by a b)
    (cond
     ((= b 1) #T)
     (else (if(= (modulo a b) 0)
          #F
          (indivisible-by a (- b 1))))))
  (if (= x 1)
      #F
      (indivisible-by x (- x 1))))
```

## References
* [Bruce Force Algorithm](https://en.wikipedia.org/wiki/Brute-force_search)
* [Adapted Solution From Here](https://stackoverflow.com/questions/3345626/finding-a-prime-number-in-scheme-using-natural-recursion?rq=1)
