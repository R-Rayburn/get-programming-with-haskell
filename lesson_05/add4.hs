add4 a b c d = a + b + c + d

addXTo3 x = (\b c d -> add4 x b c d)
addXYTo2 x y = (\c d = add4 x y c d)

mystery = add4 3

-- GHCI> mystery 2 3 4
-- 12
-- GHCI> mystery 5 6 7
-- 21

-- GHCI> anotherMystery = add4 2 3
-- GHCI> anotherMystery 1 2
-- 8
-- GHCI> anotherMystery 4 5
-- 14
