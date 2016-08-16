factor 1 = []
factor n = y:(factor (n `div` y))
  where y = [2..n] !! (length (takeWhile (\x -> (n `mod` x) /= 0) [2..n]))

p3 = maximum (factor 600851475143)
