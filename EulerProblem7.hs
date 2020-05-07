{-
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, 
we can see that the 6th prime is 13.
What is the 10 001st prime number?
-}

import Data.List
main = putStrLn . show $ sieve [2..] !! 10000 -- index starts from 0
sieve(x:xs) = x : sieve (filter ((/= 0) . (`mod` x)) xs)
