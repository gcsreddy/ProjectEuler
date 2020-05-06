{-
Find the difference between the sum of the squares 
of the first one hundred natural numbers and the 
square of the sum.
-}

import Data.List

main = putStrLn .show $ diff

sumOfSquares = sum $ fmap (^2) [1..100]

squareOfSums = (^2) $ sum [1..100]

diff = abs(sumOfSquares - squareOfSums)