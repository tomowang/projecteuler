diff n = x * x - sum [y * y | y <- [1..n]]
         where x = sum [1..n]

p6 = diff 100
