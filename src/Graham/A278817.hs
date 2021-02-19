module Graham.A278817 (a278817) where
import Math.NumberTheory.Powers.Squares (isSquare')
import Graham.A277278 (a277278)
import Data.List (find)
import Data.Maybe (fromJust)
-- The least t such that there exists a sequence
--   n = b_1 < b_2 < ... < b_t = A277278(n)
-- such that b_1 + b_2 +...+ b_t is a perfect square.


a278817 :: Integer -> Int
a278817 n
  | a == n     = 1
  | otherwise  = (2+) $ fromJust $ find f [0..length candidateTerms] where
      a = a277278 n
      candidateTerms = [n+1..a - 1]
      f i = any (\s -> isSquare' $ sum (n : a : s)) (comb i candidateTerms)

comb :: Int -> [a] -> [[a]]
comb 0 _      = [[]]
comb _ []     = []
comb m (x:xs) = map (x:) (comb (m-1) xs) ++ comb m xs
