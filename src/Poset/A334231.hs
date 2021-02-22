module Poset.A334231 (a334231) where
import Poset.Wichita (extractSingletonSet, parents, wichitaRanks)
import Data.Set (Set)
import qualified Data.Set as Set
import Helpers.SetHelpers (flatMap)
import Helpers.Table (triangleByRows)

sharedParentGeneration :: Integer -> Integer -> (Set Integer, Set Integer)
sharedParentGeneration n k
  | rankDifference == 0 = (Set.singleton n, Set.singleton k)
  | rankDifference >  0 = (Set.singleton n, grandParents rankDifference k)
  | otherwise           = (grandParents (-rankDifference) n, Set.singleton k) where
    rankDifference = length (wichitaRanks n) - length (wichitaRanks k)
    grandParents i x = iterate (flatMap parents) (Set.singleton x) !! i

a334231T :: Integer -> Integer -> Integer
a334231T n k = extractSingletonSet $ recurse (sharedParentGeneration n k) where
  recurse (s1, s2)
    | Set.null overlap = recurse (flatMap parents s1, flatMap parents s2)
    | otherwise        = overlap where
      overlap = Set.intersection s1 s2

a334231 :: Integer -> Integer
a334231 n = a334231T (n' + 1) (k' + 1) where
  (n', k') = triangleByRows (n - 1)
