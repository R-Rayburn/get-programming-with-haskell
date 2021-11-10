getRequestURL host apiKey resource id = host ++
                                        "/" ++
                                        resource ++
                                        "/" ++
                                        id ++
                                        "?token=" ++
                                        apiKey

genHostRequestBuilder host = (\apiKey resource id ->
                               getRequestURL host apiKey reource id)

exampleUrlBuilder = genHostRequestBuilder "http://example.com"

-- GHCI> exampleUrlBuilder "1337hAsk311" "book" "1234"
-- "http://example.com/book/1234?token=1337hAsk3ll"

genApiRequestBuilder hostBuilder apiKey = (\resource id ->
                                            hostBuilder apiKey resource id)

myExampleUrlBuilder = genApiRequestBuilder exampleUrlBuilder "1337hAsk3ll"

-- GHCI> myExampleUrlBuilder "book" "1234"
-- "http://example.com/book/1234?token=1337hAsk3ll"

exampleUrlBuilder = getRequestURL "http://example.com"
myExampleUrlBuilder = exampleUrlBuilder "1337hAsk3ll"
myBookExampleUrlBuilder = myExampleUrlBuilder "book"