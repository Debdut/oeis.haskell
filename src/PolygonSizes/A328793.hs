module PolygonSizes.A328793 (a328793) where
import Data.List (findIndices)
import Data.Set (Set)
import qualified Data.Set as Set
import Helpers.PolygonSizes (triangleSizes)
import HelperSequences.A003136 (a003136)

-- This could be a little faster by using the fact that
-- A328793(A024610(n) + k) > n + 1 for all n > 0, k >= 0.
a328793 :: Int -> Int
a328793 n = 2 + head (findIndices (a003136 n `Set.member`) triangleSizes)

a328793_list :: [Int]
a328793_list = map a328793 [2..]
