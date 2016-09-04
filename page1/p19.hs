isLeap n = n `mod` 400 == 0 || (not (n `mod` 100 == 0) && n `mod` 4 == 0)

nonLeap = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
leap = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

-- drop 12 => drop the year 1900
p19 = length . filter (== 0) . drop 12 $ scanl (\z x -> (z + x) `mod` 7) 1 months
    where
        months = concat $ map (\x -> if isLeap x then leap else nonLeap) [1900..2000]

