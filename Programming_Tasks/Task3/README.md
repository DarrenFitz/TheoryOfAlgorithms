## Task 3

<p><img src="https://github.com/DarrenFitz/TheoryOfAlgorithms/blob/master/Resources/3.PNG" width="808" height="240"></p>


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
