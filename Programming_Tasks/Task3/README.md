## Task 3

<p><img src="https://github.com/DarrenFitz/TheoryOfAlgorithms/blob/master/Resources/3.PNG" width="808" height="240"></p>

### What is circular shift?
Matrices of 8-element circular shifts to the left and right
In combinatorial mathematics, a circular shift is the operation of rearranging the entries in a tuple, either by moving the final entry to the first position, while shifting all other entries to the next position, or by performing the inverse operation. A circular shift is a special kind of cyclic permutation, which in turn is a special kind of permutation. The result of repeatedly applying circular shifts to a given tuple are also called the circular shifts of the tuple.

### Algorithm for Task
This task I need two functions to shift a list cyclically(circularly) to the left and right. 

**Cycle left:** Here I need to make a function that remove the first element of the list and appends it to the end of the rest(cdr) of the list. Rackets apppend function is not allowed so i will have to make my own myAppend function.

**Cycle right:** This is similar to lcycle but i will have to reverse the string to get the last element. Add it to front of list and append the re-reversed list. I will need a reverse function.

### Approach?
* Create function myAppend that can append two lists by recursively joining(cons) first element(car) of lst1 to a new list, before adding lst2.
* I use lcycle to append the first letter(car) to the rest(cdr) of list
* The function myReverse appends first(car) element to new list then recursively does the same with rest of list(cdr)
* `'(1 2 3 4)` => `'(2 3 4) '(1)` => `'(3 4) '(2 1)` => `'(4) '(3 2 1)` => `'() '(4 3 2 1)` => `'(4 3 2 1)`
* Using right cycle I reverse string to get last element and apply lcycle algorithm to append to start of re-reveresed list
* `'(1 2 3 4)` => reverse => `'(4 3 2 1)` => apply lcycle => `'(3 2 1 4)` => reverse => `'(4 1 2 3)`

### Solution
All Comments are in [task3.rkt](https://github.com/DarrenFitz/TheoryOfAlgorithms/blob/master/Programming_Tasks/Task3/task3.rkt ) file.
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

### Notes
Originally I created the solution using the `append` function. Had to change this as it violated the [instructions](https://github.com/DarrenFitz/TheoryOfAlgorithms/blob/master/Resources/problems1.PNG). To amend this I make my own myAppend function.

## References
* [Circular Shift](https://en.wikipedia.org/wiki/Circular_shift)
* [Reverse Function](https://stackoverflow.com/questions/4092113/how-to-reverse-a-list)
