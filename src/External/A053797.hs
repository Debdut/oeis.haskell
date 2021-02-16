module External.A053797 (a053797) where
import Data.List (genericIndex)
import Helpers.ListHelpers (firstDifferences)
import HelperSequences.A005117 (a005117_list)

a053797 :: Integral a => a -> a
a053797 n = genericIndex a053797_list (n - 1)

a053797_list :: Integral a => [a]
a053797_list = filter (>0) $ map (subtract 1) $ firstDifferences a005117_list
