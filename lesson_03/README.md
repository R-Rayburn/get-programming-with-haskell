#Lambda functions and lexical scope

Lambda syntax:
```
\x -> x
\arg -> body
```

Passing values into lambda functions:
```
(\x -> x) 2
2
(\x -> x) "hi"
hi
(\x -> x) [1,2,3]
[1,2,3]
(\x -> x*2) 2
4
(\x -> x*2) 4
8
```

lexical scope is variable lookup that starts in the
current scope and continues up scopes until the variable
is found.

```
x = 4
add1 y = y + x
           --^ finds x in outer scope
add2 y = (\x -> y + x) 3
         --^ uses x in lambda scope
add3 y = (\y -> (\x -> y + x) 1) 2
         --^ ignores arg in add3 
add1 1 -- 5
add2 1 -- 4
add3 1 -- 3
```

Benefits of using lambdas:
- easily write functions on the fly
- allow you to create a new scope as needed.

Exercise:
Using a let expression and a lambda function aren’t
exactly the same thing under the hood. For example,
the following code will cause an error if you try to 
run it:
```
counter x = let x = x + 1
            in
             let x = x + 1
             in
              x
```
To prove that let and lambda aren’t identical,
rewrite the counter function exactly as it is here,
but use nested lambdas instead of let.

Answer:
`counter x = (/x -> (/x -> x) (x+1)) (x+1)`

The issue is that the first let overwrites x, making the
first x + 1 error, since no x is defined (unless it was
defined outside the scope).