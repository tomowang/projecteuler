p9 = head (map product [[x,y,z] | x <- [1..999], y <- [x..999], let z = 1000-x-y, x^2 + y^2 == z^2])
