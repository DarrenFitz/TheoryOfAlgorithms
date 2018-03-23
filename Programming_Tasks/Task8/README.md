## Task 6

<p><img src="Resources/8.png" width="854" height="157"></p>


### Solution
```Racket
;chse function that takes 3 lists
(define (chse x y z)
  (cond [(null?  x) '()]
    [(null?  y) '()]
    [(null?  z) '()]
    [else
      (if(= 1 (car x))
         (cons (car y)(chse (cdr x)(cdr y)(cdr z))) 
         (cons (car z)(chse (cdr x)(cdr y)(cdr z))))])) 

```

