import Data.List

f = scanl1 (+) [1..]

-- too slow
divisors n = length [x | x <- [1..n], n `mod` x == 0]

primes = 2 : filter (null . tail . primeFactors) [3,5..]

factor n (p:ps)
    | p*p > n        = [n]
    | n `mod` p == 0 = p : factor (n `div` p) (p:ps)
    | otherwise      =     factor n ps

primeFactors n = factor n primes

-- refer to http://primes.utm.edu/glossary/xpage/tau.html
nDivisors n = product $ map ((+1) . length) (group (primeFactors n))

p12 = head $ filter ((> 500) . nDivisors) f

