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
;Create myAppend function to to append two lists together
(define (myAppend lst1 lst2)
  (if (null? lst1)                                      
      lst2
  (cons (car lst1) (myAppend (cdr lst1) lst2))))        

;lcycle function shifts list cyclically left one place
(define (lcycle x)                                      
  (if (null? x)
      '()
  (myAppend (cdr x) (list (car x)))))                   
	 

;Create a function myReverse to reverse a string
(define (myReverse r)                                  
  (if (null? r)
      '()
      (myAppend (myReverse (cdr r))(list (car r)))))   
                                                        
;rcycle function shifts list cyclically right one place
(define (rcycle x)
  (if (null? x)
      '()                           
  (myReverse (lcycle (myReverse x)))))  
```

## References
* [Reverse Function)](https://stackoverflow.com/questions/4092113/how-to-reverse-a-list)
