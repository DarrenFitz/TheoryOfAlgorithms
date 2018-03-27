# Theory of Algorithms
#### Theory of Algorithms - (Hons) Software Development - Lecturer: [Dr. Ian McLoughlin](https://ianmcloughlin.github.io/).
This repository contains exercises as part of my course for the module Theory of Algorithms. As part of continuous assessment I had to complete programming tasks found [here](https://github.com/DarrenFitz/TheoryOfAlgorithms/tree/master/Programming_Tasks).  This module focused on functional programming and all exercises were completed using [Racket](https://racket-lang.org/) programming language.

## What is Functional Programming?
Functional programming is the process of building software by composing pure functions, avoiding shared state, mutable data, and side-effects. Functional programming is declarative rather than imperative, and application state flows through pure functions. Contrast with object oriented programming, where application state is usually shared and colocated with methods in objects.

## Functional Programming vs. Imperative Programming
The functional programming paradigm was explicitly created to support a pure functional approach to problem solving. Functional programming is a form of declarative programming. In contrast, most mainstream languages, including object-oriented programming (OOP) languages such as C#, Visual Basic, C++, and Java, were designed to primarily support imperative (procedural) programming.

With an imperative approach, a developer writes code that describes in exacting detail the steps that the computer must take to accomplish the goal. This is sometimes referred to as algorithmic programming. In contrast, a functional approach involves composing the problem as a set of functions to be executed. You define carefully the input to each function, and what each function returns. The following table describes some of the general differences between these two approaches.

| Characteristic | Imperative approach | Functional approach |
| --- | --- | --- | 
| **Programmer focus** | How to perform tasks (algorithms) and how to track changes in state. | What information is desired and what transformations are required. |
| **State changes** | Important. | Non-existent. |
| **Order of execution**| Important. | Low importance. |
| **Primary flow control** | Loops, conditionals, and function (method) calls. | Function calls, including recursion. |
| **Primary manipulation unit** | Instances of structures or classes. | Functions as first-class objects and data collections. |

## What is Racket?
Racket is a general purpose, multi-paradigm programming language in the Lisp-Scheme family. One of its design goals is to serve as a platform for language creation, design, and implementation. The language is used in a variety of contexts such as scripting, general-purpose programming, computer science education, and research.

## Using Recursion
Recursion in computer science is a method where the solution to a problem depends on solutions to smaller instances of the same problem (as opposed to iteration). The approach can be applied to many types of problems, and recursion is one of the central ideas of computer science.

Most computer programming languages support recursion by allowing a function to call itself within function's code. Some functional programming languages do not define any looping constructs but rely solely on recursion to repeatedly call code. Computability theory proves that these recursive-only languages are Turing complete; they are as computationally powerful as Turing complete imperative languages, meaning they can solve the same kinds of problems as imperative languages even without iterative control structures such as “while” and “for”.

## How to Run:
1. Download Racket [here](http://racket-lang.org/download/).
2. Download repository or clone `https://github.com/DarrenFitz/TheoryOfAlgorithms`.
3. Open DrRacket, open any .rkt file and run `Ctrl + R`
4. For convenience I made single folder with all tasks 1-10 together called [AllTasks](https://github.com/DarrenFitz/TheoryOfAlgorithms/tree/master/Programming_Tasks/AllTasks).

## List of tasks provided by our lecturer Dr. Ian McLoughlin
	<p><img src="https://github.com/DarrenFitz/TheoryOfAlgorithms/blob/master/Resources/problems1.PNG" width="365" height="701"></p>
	<p><img src="https://github.com/DarrenFitz/TheoryOfAlgorithms/blob/master/Resources/problems2.PNG" width="364" height="703"></p>

## References
* [Functional Programming](https://medium.com/javascript-scene/master-the-javascript-interview-what-is-functional-programming-7f218c68b3a0)
* [Racket](https://en.wikipedia.org/wiki/Racket_(programming_language))
* [Racket Guide](https://docs.racket-lang.org/reference/)
* [Recursion](https://en.wikipedia.org/wiki/Recursion_(computer_science)) 
* [Functional v Imperative](https://docs.microsoft.com/en-us/dotnet/csharp/programming-guide/concepts/linq/functional-programming-vs-imperative-programming)

