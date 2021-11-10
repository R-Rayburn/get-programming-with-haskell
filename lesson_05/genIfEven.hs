ifEven myFunction x =
 if even x
 then myFunction x
 else x

inc x = x + 1

genIfEven f = (\x -> ifEven f x)

ifEvenInc = genIfEven inc
--            |        |
-- (\x -> ifEven f x)  |
--         |           |
--      (\x -> ifEven inc x)
--              |
--  ifEvenInc = (\x -> ifEven inc x)