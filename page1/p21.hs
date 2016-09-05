divisors n = [x | x <- [1..n-1], n `mod` x == 0]
d n = sum $ divisors n

p21 = sum [n | n <- [2..9999],  let m = d n, m < 10000, n == d m, m /= n]

