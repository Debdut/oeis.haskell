module EKG.A240024 (a240024, a240024_list) where
import HelperSequences.A002808 (a002808_list)
import Data.List (delete, find)
import Data.Maybe (fromJust)

a240024:: Int -> Integer
a240024 n = a240024_list !! (n - 1)

a240024_list :: [Integer]
a240024_list = 1 : go 4 (tail a002808_list) where
  go :: Integer -> [Integer] -> [Integer]
  go n remaining = n : go n' (delete n' remaining) where
    n' = fromJust $ find (\i -> gcd n i /= 1) remaining
