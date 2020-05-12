{-
Working from left-to-right if no digit is exceeded 
by the digit to its left it is called an increasing number; 
for example, 134468.

Similarly if no digit is exceeded by the digit to its right 
it is called a decreasing number; for example, 66420.

We shall call a positive integer that is neither increasing 
nor decreasing a "bouncy" number; for example, 155349.

Clearly there cannot be any bouncy numbers below one-hundred, 
but just over half of the numbers below one-thousand (525) are bouncy. In fact, the least number for which the proportion of bouncy numbers first reaches 50% is 538.

Surprisingly, bouncy numbers become more and more common and 
by the time we reach 21780 the proportion of bouncy numbers 
is equal to 90%.

Find the least number for which the proportion of bouncy 
numbers is exactly 99%.

-}

import Data.List

main = putStrLn . show $ snd res

isBouncyNumber n = 
  let 
    nstr = show n
    rnstr = reverse nstr
    dAndNext str = fmap (\(x,y) -> x <= y) (zip str (tail str))
  in not (all id (dAndNext nstr)) && not (all id (dAndNext rnstr))

nums = zip [1..] $ fmap (\n -> if isBouncyNumber n == True then 1 else 0) [1..] 

res = head $ dropWhile (\(f,s) ->  (div (s*100) f) < 99) $ scanl1 (\(f1,s1) (f2,s2) -> (f2, s1+s2)) nums