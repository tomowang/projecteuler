m1 = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
m2 = ["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
m3 = ["", "", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]

split n base = (n `div` base, n `mod` base)

one n = m1 !! n

two n = 
    if x == 0
        then one y
    else if x == 1
        then m2 !! y
    else if y == 0
        then m3 !! x
    else m3 !! x ++ m1 !! y
    where (x, y) = split n 10

three n =
    if x == 0
        then two n
    else if y == 0
        then m1 !! x ++ "hundred"
    else m1 !! x ++ "hundred" ++ "and" ++ two y
    where (x, y) = split n 100

p17 = length $ foldl (++) "onethousand" (map three [1..999])
