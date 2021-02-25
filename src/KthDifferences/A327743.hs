module KthDifferences.A327743 (a327743_list, a327743) where
import Data.Set (Set)
import qualified Data.Set as Set
import Data.Maybe (Maybe, mapMaybe)

type KthDifferences = [(Integer, Set Integer)]

-- Each list of k-th differences distinct.
a327743_list :: [Integer]
a327743_list = recurse [] where
  recurse kthDifferences = n : recurse ds where
    ds@((n,_):_) = nextDifferences kthDifferences

a327743 :: Int -> Integer
a327743 n = a327743_list !! (n - 1)

nextDifferences :: KthDifferences -> KthDifferences
nextDifferences ds = head $ mapMaybe (`updateDifferences` ds) [1..]

updateDifferences :: Integer -> KthDifferences -> Maybe KthDifferences
updateDifferences nextTerm [] = Just [(nextTerm, Set.singleton nextTerm)]
updateDifferences nextTerm ((d, ds):ds')
  | nextTerm `Set.member` ds = Nothing
  | otherwise            = fmap (updated:) (updateDifferences (nextTerm - d) ds') where
    updated = (nextTerm, Set.insert nextTerm ds)
