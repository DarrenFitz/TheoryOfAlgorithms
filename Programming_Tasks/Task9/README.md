## Task 9

<p><img src="Resources/9.png" width="855" height="187"></p>



### Solution
```Racket
;Function sod2 that takes 3 lists
(define (sod2 x y z)
  (cond [(null?  x) '()]
    [(null?  y) '()]
    [(null?  z) '()]
    [else
      (if(=(modulo (+ (car x)(car y)(car z)) 2) 0)        
             (cons 0 (sod2 (cdr x)(cdr y)(cdr z)))
             (cons 1 (sod2 (cdr x)(cdr y)(cdr z))))]))

```

## References
