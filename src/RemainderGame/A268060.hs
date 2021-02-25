module RemainderGame.A268060 (a268060) where
import Helpers.RemainderGame (shrinkingDivisorIterations)
import RemainderGame.A268058 (a268058)
import Data.Maybe (fromJust)
import Data.List (find)

a268060 :: Int -> Integer
a268060 n = toInteger $ fromJust $ find f [1..n] where
  f k = shrinkingDivisorIterations n k == a268058 n
