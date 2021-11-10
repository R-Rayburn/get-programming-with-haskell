#First-class functions
The concept of FC Functions is that they are no
different from any other data.
Functions can be used as arguments and returned
as values of other functions.

Functions are always evaluated before operators. Ex:
```
GHCI> 1 + 2 * 3
7

GHCI> inc 2 * 3
9
```
These are different, because in normal operator
evaluations, `*` comes before `+`. However, `inc`
comes before `*`. This is even true for multi-param
functions:
```
GHCI> add x y = x + y
GHCI> add 1 2 * 3
9
```
A benefit with this is that you can avoid using a
large number of parenthesis within code.

A big benefit of FC Functions is with sorting.

FC Functions can also be returned in other functions.
This is good when you might want to dispatch certain
functions based on certain parameters.

FC Functions are powerful because they allow programmers
to abstract computation out from their functions.

###Exercise:
Write a lambda function for cubing x and pass it
to ifEven.
```
ifEven (\x -> x^3) 4
```

Anything that can be compared in Haskell 
(for example, [Char], which you use for the names 
in your name tuples) can be compared with a function
called compare. The compare function returns GT, LT, 
or EQ. Rewrite compareLastNames by using compare.
```
compareLastNames name1 name2 =
 if lastCompare == EQ
 then compare firstName1 firstName2
 else lastCompare
 where firstName1 = fst name1
       lastName1 = snd name1
       firstName2 = fst name2
       lastName2 = snd name2
       lastCompare = compare lastName1 lastName2
```

Define a new location function for Washington,
DC and add it to getLocation-Function. In the
DC function, everyone’s names must be followed by Esq.
> see addressLetter.hs