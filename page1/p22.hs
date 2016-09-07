import Data.List
import Data.Char
import Data.List.Split

p22 =
    do content <- readFile "p022_names.txt"
       let names = sort $ map (init.tail) $ splitOn "," content
       let scores = zipWith score names [1..]
       print . sum $ scores
  where score w i = (i *) . sum . map (\c -> ord c - ord 'A' + 1) $ w
