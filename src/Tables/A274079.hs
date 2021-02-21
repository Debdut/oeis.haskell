module Tables.A274079 (a274079, a274079_row, a274079_tabf) where
import HelperSequences.A002262 (a002262)
import Data.List (genericIndex)

a274079 :: Integral a => a -> a
a274079 n = genericIndex a274079_list (n - 1)

a274079_list :: Integral a => [a]
a274079_list = concatMap a274079_row [1..]

a274079_tabf :: Integral a => [[a]]
a274079_tabf = map a274079_row [1..]

a274079_row :: Integral a => a -> [a]
a274079_row n = [n-1, n-2..n - a002262 (n - 1)]
