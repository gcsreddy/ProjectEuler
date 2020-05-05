{-
A palindromic number reads the same both ways. 
The largest palindrome made from the product of 
two 2-digit numbers is 9009 = 91 × 99.
Find the largest palindrome made from the product of 
two 3-digit numbers.
-}

import Data.List

isPalindrome num = let str = show num in str == reverse str

palindrome = head . reverse . sort $ filter 
  isPalindrome $ (*) <$> [999,998..100] <*> [999,998..100]

main = putStrLn . show $ palindrome
