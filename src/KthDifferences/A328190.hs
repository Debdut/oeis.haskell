module KthDifferences.A328190 (a328190, a328190_list) where
import Data.List (unfoldr, find)
import Data.Set (Set)
import qualified Data.Set as Set
import Data.Maybe (Maybe)

type Info = (Integer, Set Integer)

a328190 :: Int -> Integer
a328190 n = a328190_list !! (n - 1)

a328190_list :: [Integer]
a328190_list = 1 : unfoldr f (1, Set.singleton 1) where
  f :: Info -> Maybe (Integer, Info)
  f (a, s) = fmap (\y -> (y, (y, Set.insert (y - a) $ Set.insert y s))) x where
    x = find (\i -> isValid i a s) [1..]

isValid proposedTerm lastTerm knownTerms = not (proposedTerm `Set.member` knownTerms || (proposedTerm - lastTerm) `Set.member` knownTerms)
