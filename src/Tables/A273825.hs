module Tables.A273825 (a273825, a273825_row, a273825_tabf) where
import Miscellaneous.A271439 (a271439)
import Data.List (genericIndex)

a273825 :: Integral a => a -> a
a273825 n = genericIndex a273825_list (n - 1)

a273825_list :: Integral a => [a]
a273825_list = concatMap a273825_row [1..]

a273825_tabf :: Integral a => [[a]]
a273825_tabf = map a273825_row [1..]

a273825_row :: Integral a => a -> [a]
a273825_row n
  | a_i == 0  = []
  | otherwise = a_i : a273825_row a_i where
    a_i = a271439 $ a271439 (n - 1)
