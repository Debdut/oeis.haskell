module KthDifferences.A327844 (a327844_list, a327844) where
import KthDifferences.A327743 (a327743_list)
import Data.Set (Set)
import qualified Data.Set as Set
import Data.Maybe (Maybe, mapMaybe)
import Helpers.Table (indicesByAntidiagonals)

type KthDifferences = [(Integer, Set Integer)]

a327844_list :: [Integer]
a327844_list = map (\(k, n) -> rows !! k !! n) indicesByAntidiagonals where
  rows = map rowK [1..]

a327844 :: Int -> Integer
a327844 n = a327844_list !! (n-1)
-- Each list of k-th differences distinct.
rowK :: Int -> [Integer]
rowK k = recurse [] where
  recurse kthDifferences = n : recurse ds where
    ds@((n,_):_) = nextDifferences k kthDifferences

nextDifferences :: Int -> KthDifferences -> KthDifferences
nextDifferences k ds = head $ mapMaybe (\i -> updateDifferencesUpTo k i ds) [1..]

updateDifferencesUpTo :: Int -> Integer -> KthDifferences -> Maybe KthDifferences
updateDifferencesUpTo _ nextTerm [] = Just [(nextTerm, Set.singleton nextTerm)]
updateDifferencesUpTo k nextTerm ((d, ds):ds')
  | nextTerm `Set.member` ds = Nothing
  | k == 0               = Just [(nextTerm, Set.insert nextTerm ds)]
  | otherwise            = fmap (updated:) (updateDifferencesUpTo (k-1) (nextTerm - d) ds') where
    updated = (nextTerm, Set.insert nextTerm ds)
