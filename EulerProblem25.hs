{-
1000-digit Fibonacci number in 1 1 2 3 5 ..
-}

import Data.List

main = do
  let index = findIndex (\x -> length(x) == 1000) $ fmap  show fibs
  putStrLn $ show (fmap (+1) index)

fibs = 1 : 1 : zipWith (+) fibs (tail fibs)

