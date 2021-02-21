module Tables.A273823 (a273823, a273823_row, a273823_tabf) where
import Miscellaneous.A271439 (a271439)
import Data.List (genericIndex)

a273823 :: Integral a => a -> a
a273823 n = genericIndex a273823_list (n - 1)

a273823_list :: Integral a => [a]
a273823_list = concatMap a273823_row [1..]

a273823_tabf :: Integral a => [[a]]
a273823_tabf = map a273823_row [1..]

a273823_row :: Integral a => a -> [a]
a273823_row n
  | a_i == 0  = []
  | otherwise = a_i : a273823_row a_i where
    a_i = a271439 n
