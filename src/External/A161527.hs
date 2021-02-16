module External.A161527 (a161527, a161527_list) where
import HelperSequences.A000040 (a000040_list)
import Data.Ratio (Ratio, (%), denominator, numerator)

-- A038110(n)/A038111(n)
fractionsList :: [Ratio Integer]
fractionsList = recurse 0 a000040_list where
  recurse cumulativeSum (p:ps) = a_n : recurse (cumulativeSum + a_n) ps where
    a_n = (1 - cumulativeSum) / (p % 1)

a161527_list :: [Integer]
a161527_list = map numerator $ scanl1 (+) fractionsList

a161527 :: Int -> Integer
a161527 n = a161527_list !! (n-1)
