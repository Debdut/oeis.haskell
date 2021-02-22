module HelperSequences.A000720 (a000720) where
import HelperSequences.A000040 (a000040_list)
import Data.List (genericLength)

a000720 :: Integer -> Integer
a000720 n = genericLength $ takeWhile (<= n) a000040_list
