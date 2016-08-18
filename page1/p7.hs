isPrime :: Int -> Bool
isPrime 2 = True
isPrime n = length l /= 0 && last l == m
    where
      m = (floor . sqrt . fromIntegral) n + 1
      l = takeWhile (\x -> (n `mod` x) /= 0) [2..m]

nthPrime n = [x | x <- [2..], isPrime x] !! (n - 1)

p7 = nthPrime 10001
