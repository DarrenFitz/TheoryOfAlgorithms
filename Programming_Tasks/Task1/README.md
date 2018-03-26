## Task 1

<p><img src="https://github.com/DarrenFitz/TheoryOfAlgorithms/blob/master/Resources/1.PNG" width="803" height="109"></p>

### What is brute-force algorithm? 
In computer science, brute-force search or exhaustive search, also known as generate and test, is a very general problem-solving technique that consists of systematically enumerating all possible candidates for the solution and checking whether each candidate satisfies the problem's statement.

### What is a prime Number?
A number that is divisible only by itself and 1 (e.g. 2, 3, 5, 7, 11).

### Algorithm for Task
Applying forementioned knowledge I need to make an algorithm that decide if a number is a prime. A basic brute algorithm of diving number by two repeatedly until remainder is either 1 or zero is an method. I will differ an use another approach. There are a few other [primality tests](https://en.wikipedia.org/wiki/Primality_test ) that can be used, but this method is sufficient.

### Approach
* I created decide-prime function that took a single positive integer and returned #T if prime, otherwise #F.
* The indivisible-by function recursively applies the math to check if the input is divisible any number other than itself of 1.
* Recursively check each number is not divisible into x(input) starting at x and decreasing by 1 each time.
* If there is a denominator other than itself or 1, return #F, else #T.
* Exclude 1 as prime and return #F

### Solution
`All Comments are in [task1.rkt](https://github.com/DarrenFitz/TheoryOfAlgorithms/blob/master/Programming_Tasks/Task1/task1.rkt) file.`
```Racket
;Decide-Prime function to check if number is prime
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
* [Primality tests](https://en.wikipedia.org/wiki/Primality_test)