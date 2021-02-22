module Poset.A332809 (a332809, a332809_list) where
import Poset.Wichita (wichitaRanks)
import Data.Set (Set)
import qualified Data.Set as Set

a332809 :: Integer -> Int
a332809 = sum . map Set.size . wichitaRanks

a332809_list :: [Int]
a332809_list = map a332809 [1..]
