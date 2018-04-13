
{-
 - Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
 - If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.
 -
 - For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.
 -
 - Evaluate the sum of all the amicable numbers under 10000.
 - -}

properDivisors n = [ x | x <- [1.. div n 2], rem n x == 0 ]::[Int]

amicableNumbers am = [ x | x <- [1..am],let y = sum $ properDivisors x, let z = sum $ properDivisors y, x == z, x /= y ] ::[Int]

main = print $ sum $ amicableNumbers 10000
