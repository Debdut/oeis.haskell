module Poset.A334144 (a334144, a334144_list) where
import Poset.Wichita (wichitaRanks)
import Data.Set (Set)
import qualified Data.Set as Set

a334144 :: Integer -> Int
a334144 = maximum . map Set.size . wichitaRanks

a334144_list :: [Int]
a334144_list = map a334144 [1..]
