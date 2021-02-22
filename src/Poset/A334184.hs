module Poset.A334184 (a334184, a334184_row) where
import Poset.Wichita (wichitaRanks)
import Data.Set (Set)
import qualified Data.Set as Set

a334184 :: Int -> Int
a334184 n = a334184_list !! (n-1)

a334184_list :: [Int]
a334184_list = concatMap a334184_row [1..]

a334184_row :: Integer -> [Int]
a334184_row = map Set.size . wichitaRanks
