module RemainderGame.A268059 (a268059) where
import Helpers.RemainderGame (shrinkingDivisorIterations)
import RemainderGame.A268058 (a268058)

a268059 :: Int -> Integer
a268059 n = toInteger $ length $ filter f [1..n] where
  f k = shrinkingDivisorIterations n k == a268058 n
