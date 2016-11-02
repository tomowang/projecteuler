import Data.Array

n = 28124

divisors n = 1 : filter ((==0) . rem n) [2 .. n `div` 2]
is_abundant n = sum (divisors n) > n

abunds_array = listArray (1,n) $ map is_abundant [1..n]

abunds = filter (abunds_array !) [1..n]
 
rests x = map (x-) $ takeWhile (<= x `div` 2) abunds
isSum = any (abunds_array !) . rests
 
p23 = sum . filter (not . isSum) $ [1..n]
