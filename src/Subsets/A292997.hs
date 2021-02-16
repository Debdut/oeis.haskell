module Subsets.A292997 (a292997) where
import Data.Set (Set)
import qualified Data.Set as Set
import Helpers.Subsets (eachPair, combinations)
import Helpers.Factorials (binomial, factorial)

a292997 n = a292997_list !! (n - 1)

a292997_list = concatMap a292997_row [1..]

-- Can exploit the fact that each row is weakly longer than the preceding row.
a292997_row n = head $ filter (`isValidSubset` s) ls where
  s = Set.fromList [1..n]
  ls = canonicallyOrderedSubsequences [1..n]

-- Assumes list is increasing
isValidSubset :: [Int] -> Set Int -> Bool
isValidSubset list targetSet = recurse pairs targetSet' where
  pairs = eachPair list
  targetSet' = targetSet Set.\\ Set.fromList list
  recurse ((a,b):ls) s
    | null s    = True
    | otherwise = recurse ls (Set.delete (b - a) $ Set.delete (a + b) s)
  recurse [] s
    | null s = True
    | otherwise = False

-- Ordered by length, then lexicographically.
-- Only makes sense for finite lists
canonicallyOrderedSubsequences l = concatMap (`combinations` l) [0..length l]
