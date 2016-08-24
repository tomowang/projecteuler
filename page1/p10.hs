isPrime :: Int -> Bool
isPrime 2 = True
isPrime n = length l /= 0 && last l == m
    where
      m = (floor . sqrt . fromIntegral) n + 1 
      l = takeWhile (\x -> (n `mod` x) /= 0) [2..m]

p10 = sum [x | x <- [2..2000000], isPrime x]
