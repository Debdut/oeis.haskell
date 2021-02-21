module Tables.A273824 (a273824, a273824_row, a273824_tabf) where
import Miscellaneous.A271439 (a271439)
import Data.List (genericIndex)

a273824 :: Integral a => a -> a
a273824 n = genericIndex a273824_list (n - 1)

a273824_list :: Integral a => [a]
a273824_list = concatMap a273824_row [1..]

a273824_tabf :: Integral a => [[a]]
a273824_tabf = map a273824_row [1..]

a273824_row :: Integral a => a -> [a]
a273824_row n
  | a_i == 0  = []
  | otherwise = a_i : a273824_row a_i where
    a_i = a271439 (n - 1)
