module External.A181534 (a181534, a181534_list) where
import HelperSequences.A000217 (a000217)
import Data.List (find)
import Data.Maybe (fromJust)

a181534 :: Int -> Integer
a181534 n = a181534_list !! (n - 1)

a181534_list :: [Integer]
a181534_list = 1 : seqTail 2 1 where
  seqTail n l = a_n : seqTail (n + 1) a_n where
    a_n = fromJust $ find (\i -> 2 * a000217 i > a000217 n) [l..]
