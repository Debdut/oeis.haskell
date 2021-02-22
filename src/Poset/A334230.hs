module Poset.A334230 (a334230) where
import Poset.Wichita (extractSingletonSet, children, wichitaRanks)
import Data.Set (Set)
import qualified Data.Set as Set
import Helpers.SetHelpers (flatMap)
import Helpers.Table (triangleByRows)

sharedChildGeneration :: Integer -> Integer -> (Set Integer, Set Integer)
sharedChildGeneration n k
  | rankDifference == 0 = (Set.singleton n, Set.singleton k)
  | rankDifference >  0 = (grandChildren rankDifference n, Set.singleton k)
  | otherwise           = (Set.singleton n, grandChildren (-rankDifference) k) where
    rankDifference = length (wichitaRanks n) - length (wichitaRanks k)
    grandChildren i x = iterate (flatMap children) (Set.singleton x) !! i

a334230T :: Integer -> Integer -> Integer
a334230T n k = extractSingletonSet $ recurse (sharedChildGeneration n k) where
  recurse (s1, s2)
    | Set.null overlap = recurse (flatMap children s1, flatMap children s2)
    | otherwise        = overlap where
      overlap = Set.intersection s1 s2

a334230 :: Integer -> Integer
a334230 n = a334230T (n' + 1) (k' + 1) where
  (n', k') = triangleByRows (n - 1)
