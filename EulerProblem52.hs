{-
It can be seen that the number, 125874, 
and its double, 251748, contain exactly 
the same digits, but in a different order.
Find the smallest positive integer, x, 
such that 2x, 3x, 4x, 5x, and 6x, contain 
the same digits.

-}

import Data.List

main = putStrLn .show $ res

-- 6x contains same digitis only if the numbers starting with 1, all else fail.

filterFunc a n = 
  head astr == '1' && alen == anlen && astrdigits == anstrdigits
  where
    astr = show(a)
    anstr = show(a * n)
    alen = length(astr)
    anlen = length(anstr)
    astrdigits = sort(astr)
    anstrdigits = sort(anstr)

-- take 1 [ b | b <- [2..], filterFunc b 6 && filterFunc b 5 && filterFunc b 4 && filterFunc b 3 && filterFunc b 2]
res = head [ b | b <- [2..], all (\n -> filterFunc b n) [6,5..2] ]
