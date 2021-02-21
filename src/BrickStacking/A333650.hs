module BrickStacking.A333650 (a333650) where
import Data.Set (Set)
import qualified Data.Set as Set
import Data.List (elemIndices)
import Helpers.SetHelpers (flatMap)

type BrickStack = Set (Int, Int)

children :: BrickStack -> Set BrickStack
children brickStack = Set.union nw ne where
    nw = flatMap (\(a,b) -> f (a+1, b)) brickStack
    ne = flatMap (\(a,b) -> f (a+1, b+1)) brickStack
    f (x, y)
        | Set.member (x, y) brickStack = Set.empty
        | otherwise                    = Set.singleton $ Set.insert (x, y) brickStack

nextGeneration :: Int -> Set BrickStack -> Set BrickStack
nextGeneration n currentGeneration = Set.insert base recurse where
    recurse = flatMap children currentGeneration
    base = Set.fromList [(0,i) | i <- [0..n-1]]

generations :: [Set BrickStack]
generations = recurse 2 seed where
    seed = Set.singleton $ Set.singleton (0,0)
    recurse n row = row : recurse (n + 1) (nextGeneration n row)

height :: BrickStack -> Int
height = (+1) . fst . Set.findMax

-- Note: this is a kind of slow way to compute a histogram.
a333650_row :: Int -> [Int]
a333650_row n = map (\i -> length $ elemIndices i x) [1..n] where
    x = map height $ Set.toList $ generations !! (n-1)

a333650_rows :: [[Int]]
a333650_rows = map a333650_row [1..]

a333650_list :: [Int]
a333650_list = concat a333650_rows

a333650 :: Int -> Int
a333650 n = a333650_list !! (n - 1)

-- [1]
-- [1, 2]
-- [1, 4,   4]
-- [1, 7,   11,   8]
-- [1, 12,  24,   28,    16]
-- [1, 20,  52,   70,    68,    32]
-- [1, 33,  110,  168,   193,   160,   64]
-- [1, 54,  228,  401,   497,   510,   368,   128]
-- [1, 88,  467,  944,   1257,  1412,  1304,  832,   256]
-- [1, 143, 949,  2187,  3172,  3736,  3879,  3248,  1856,  512]
-- [1, 232, 1916, 5010,  7946,  9778,  10766, 10360, 7920,  4096,  1024]
-- [1, 376, 3848, 11397, 19677, 25556, 29094, 30198, 27016, 18976, 8960, 2048]
