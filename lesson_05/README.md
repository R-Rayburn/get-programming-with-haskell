#Closures and partial application

###Examples:
Write a function genIfXEven that creates a closure
with x and returns a new function that allows the
user to pass in a function to apply to x if x is even.
```
genIfXEven x = (\f -> ifEven f x)
```

Write a version of genApiRequestBuilder that also
takes the resource as an argument.
> See getRequestUrl.hs for previous functions
```
genApiRequestBuilder hostBuilder apiKey resource = (\id ->
                                                     hostBuilder apiKey
                                                     resource id)

myExampleBookUrlBuilder = genApiRequestBuilder exampleUrlBuilder "1337hAsk3ll" "book"
```
