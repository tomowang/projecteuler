import Data.List

f n | even n = n `div` 2
    | otherwise = 3 * n + 1

collatz 1 = [1]
collatz n = n:(collatz (f n))

p14 = fst $ maximumBy largerLength $ map (\n -> (n, length (collatz n))) [1..999999]
    where
        largerLength (n1, l1) (n2, l2) = compare l1 l2

