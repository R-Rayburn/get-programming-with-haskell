import Data.Set as Set
isEven :: Integer -> Bool
isEven n = (mod n 2) == 0

threeNPlusOne :: Integer -> Integer
threeNPlusOne n = if isEven n
                  then n `div` 2
                  else 3*n + 1

checkCycle :: [Integer] -> Integer -> Set Integer -> ([Integer], Integer, Set Integer)
checkCycle xs c s = if (value `elem` s) || (value == 1)
                 then (xs ++ [value], c, s)
                 else checkCycle (xs ++ [value]) (c+1) (value `insert` s)
    where value = threeNPlusOne (last xs)

-- Need to loop through this.
runAlg x = checkCycle [x] 1 (Set.fromList [x])