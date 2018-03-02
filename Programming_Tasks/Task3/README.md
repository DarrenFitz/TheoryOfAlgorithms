## Task 3

3. Write, from scratch, two functions in Racket. The first is called lcycle. It takes a
list as input and returns the list cyclically shifted one place to the left. The second
is called rcycle, and it shifts the list cyclically shifted one place to the right. 

**Example 1:**
(lcycle (list 1 2 3 4 5))  
**Result:**
'(2 3 4 5 1)

**Example 2:**
(rcycle (list 1 2 3 4 5))  
**Result:**
'(5 1 2 3 4)


### Solution
```Racket
(define (lcycle x)
  (if (null? x)
      '()
  (append (cdr x) (list (car x)))))

(define (rcycle x)
  (if (null? x)
      '()
  (reverse (lcycle (reverse x)))))
```
