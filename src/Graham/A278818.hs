module Graham.A278818 (a278818) where
import Math.NumberTheory.Powers.Squares (isSquare')
import Graham.A277278 (a277278)
import Data.List (find)
import Data.Maybe (fromJust)
-- The least t such that there exists a sequence
--   n = b_1 < b_2 < ... < b_t = A277278(n)
-- such that b_1 + b_2 +...+ b_t is a perfect square.


a278818 :: Integer -> Integer
a278818 n = fromJust $ find (isSquare' . (+ n)) [n + 1..]
