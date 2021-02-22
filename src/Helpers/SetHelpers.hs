module Helpers.SetHelpers (flatMap) where
import Data.Set (Set)
import qualified Data.Set as Set

flatMap :: (Ord a, Ord b) => (a -> Set b) -> Set a -> Set b
flatMap f s = Set.foldr Set.union Set.empty (Set.map f s)
