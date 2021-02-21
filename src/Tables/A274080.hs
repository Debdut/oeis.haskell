module Tables.A274080 (a274080, a274080_row, a274080_tabf) where
import Tables.A273823 (a273823_row)
import Tables.A273824 (a273824_row)
import Tables.A273825 (a273825_row)
import Tables.A274079 (a274079_row)
import Data.List (sort, nub, genericIndex)


a274080 :: Integral a => a -> a
a274080 n = genericIndex a274080_list (n - 1)

a274080_list :: Integral a => [a]
a274080_list = concatMap a274080_row [1..]

a274080_tabf :: Integral a => [[a]]
a274080_tabf = map a274080_row [1..]

a274080_row :: Integral a => a -> [a]
a274080_row n = nub $ sort $ a274079_row n ++ a273825_row n ++ a273824_row n ++ a273823_row n
