module AlecSequences.A333398 (a333398, a333398_list) where
import Data.Set (Set)
import qualified Data.Set as Set
import Data.List (delete, transpose)

a333398_list = 0 : recurse 0 (Set.singleton 0) (concat $ transpose [[-1,-2..],[1..]]) where
    recurse a previousTerms diffs = a' : recurse a' (Set.insert a' previousTerms) (delete d' diffs) where
        d' = head $ filter (\d -> (a + d) `Set.notMember` previousTerms) diffs
        a' = a + d'

a333398 n = a333398_list !! (n - 1)
