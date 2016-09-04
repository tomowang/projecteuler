f n = sum (map (read . (:"")) $ show $ product [1..n] :: [Int])
p20 = f 100
