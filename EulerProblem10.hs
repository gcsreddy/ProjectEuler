{-
The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
Find the sum of all the primes below two million.
-}

import Data.List
main = putStrLn . show $ res

res = sum $ filter isPrime [2..1999999]
isPrime n = 
  let
    primeTest [] = True
    primeTest (x:xs)
      | mod n x == 0 = False
      | otherwise = primeTest xs
  in
    primeTest [2..floor (sqrt $ fromIntegral n)]
