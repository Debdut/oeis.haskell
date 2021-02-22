module HelperSequences.A112798 (a112798, a112798_row) where
import HelperSequences.A027746 (a027746_row)
import Data.Maybe (fromJust)
import Data.List (elemIndex)
import HelperSequences.A000040 (a000040_list)


a112798 :: Int -> Int
a112798 n = a112798_tabl !! (n - 2)

a112798_tabl :: [Int]
a112798_tabl = concatMap a112798_row [1..]

a112798_row :: Integer -> [Int]
a112798_row 1 = []
a112798_row n = map f $ a027746_row n where
  f p = (1+) $ fromJust $ elemIndex p a000040_list
