--https://projecteuler.net/problem=65
import Data.Char
import Data.Ratio

main = print $ sum . map digitToInt . show . numerator . foldl1 (\x y -> 1/x + y) . reverse . (:) 2 . take 99 . concat $ [[1,2*x,1]|x<-[1..]]
