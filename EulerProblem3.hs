{-
The prime factors of 13195 are 5, 7, 13 and 29.
What is the largest prime factor of the number 600851475143 ?
-}

import Data.List


filfun = \(_,y) -> y == 0
factor num = fmap (quotRem num) [2..]

fac num = case find filfun $ factor num of
  Just (1,_) -> Just (num, 0)
  Just (x,_) -> fac x

main = do
  let num = 600851475143 :: Integer
  putStrLn .show $ case (fac num) of
    Just (x,_) -> x
    Nothing -> num