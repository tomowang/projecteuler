isPalindrome w = w == reverse w

p4 = maximum [z | z <- [x * y | x <- [100..999], y <- [100..999]], isPalindrome (show z)]
