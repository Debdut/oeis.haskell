module Miscellaneous.A306698 (a306698, a306698_list) where
import Data.Set (Set)
import qualified Data.Set as Set

a306698 :: Int -> Integer
a306698 = (!!) a306698_list

a306698_list :: [Integer]
a306698_list = 0 : recurse 1 0 (Set.singleton 0) where
  recurse n a s = a' : recurse (n + 1) a' (Set.insert a' s) where
    a' = if a'' < 0 || a'' `Set.member` s then a + n else a'' where
      a'' = a - 2*n
