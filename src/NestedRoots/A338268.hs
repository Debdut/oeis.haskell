module NestedRoots.A338268 (a338268, a338268_row, a338268_t) where
import Data.MemoCombinators (memo2, integral)
import Math.NumberTheory.Powers.Squares (integerSquareRoot')

a338268_t :: Integer -> Integer -> Integer
a338268_t = memo2 integral integral f' where
  f' 0 0 = 1
  f' n k
    | (n + k) `mod` 2 == 1 = 0
    | n == 0 && k > 0      = 0
    | n < k                = 0
    | k < 0                = 0
    | otherwise            = sum $ map (\i -> a338268_t (n - i) (k^2 - i)) [1..n]

a338268 :: Int -> Integer
a338268 n = a338268_list !! (n - 1)

a338268_list :: [Integer]
a338268_list = concatMap a338268_row [1..]

a338268_row :: Integer -> [Integer]
a338268_row n = map (a338268_t n) [1..integerSquareRoot' n]
