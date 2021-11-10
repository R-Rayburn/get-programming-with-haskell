--ifEvenInc n =
-- if even n
-- then n + 1
-- else n
--
--ifEvenDouble n =
-- if even n
-- then n*2
-- else n
--
--ifEvenSquare n =
-- if even n
-- then n^2
-- else n

-- example of first class func
ifEven myFunction x =
 if even x
 then myFunction x
 else x

inc n = n + 1
double n = n * 2
square n = n^2
cube n = n^3
neg n = -n

ifEvenInc n = ifEven inc n
ifEvenDouble n = ifEven double n
ifEvenSquare n = ifEven square n
ifEvenCube n = ifEven cube n
ifEvenNegate n = ifEven neg n