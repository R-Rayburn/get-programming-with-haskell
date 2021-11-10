# Functions and functional programming
- Functions work like they do in mathematics:
  - f_name argument = behavior
- Three rules:
  - must take at least one argument
  - must return a value
  - when a function is called with the same argument, it must return the same value
    - (referential transparency)
- The discovery of the relationship between lambda calculus and computing is called the [Church-Turing thesis](www.alanturing.net/turing_archive/pages/reference%20articles/The%20Turing-Church%20Thesis.html).
  - with this you have a mathematically sound model for programming.
- Functional Programming's goal is to bring the power of mathematics to the programmer.
- Haskell is a _safe_ programming language
  - Always behaves the way you expect
  - Easily reason about their behavior
- If you aren’t passing an argument to a function, you must be accessing a value in your environment.
- If you aren’t returning a value, you must also be changing a value in your environment.
- When you change a value in your programming environment, you’re changing the program’s state.
  - Changing state creates side effects in your code, and these side effects can make code hard to reason about and therefore unsafe.

Some confusing behavior:
```
myList = [1,2,3]
myList.reverse()
newList = myList.reverse()
```

`newList` results for three different languages:
```
Ruby -> [3,2,1]
Python -> None
JavaScript -> [1,2,3]
```

These changes come about due to side effects.

If Haskell functions didn’t always return a value,
they’d have to change a hidden state in the program;
otherwise, they’d be useless. If they didn’t take an
argument, they’d have to access a hidden one, which
would mean they’re no longer transparent.

Because Haskell doesn’t allow this, you can look at any
code, written by any programmer, and reason about its 
behavior.

In Haskell, variables are definitions, therefore, they
cannot be re-assigned like they are in other languages.

Q1.
You used Haskell’s if then else expression to write
calcChange. In Haskell, all if statements must include
an else component. Given our three rules for functions,
why can’t you have an if statement all by itself?

Q2.
Write functions named inc, double, and square that 
increment, double, and square an argument n, respectively.

Q3.
Write a function that takes a value n. If n is even,
the function returns n - 2, and if the number is odd,
the function returns 3 × n + 1. To check whether the
number is even, you can use either Haskell’s even
function or mod (Haskell’s modulo function).

A1.
It must always return a value, so if you do not return
unless the if condition succeeds, then this rule is broken.

A2.
```
inc n = n + 1
double n = n * 2
square n = n ^ 2
```

A3.
```
f n = if rem == 0
      then n - 2
      else 3*n + 1
  where rem = mod n 2
```