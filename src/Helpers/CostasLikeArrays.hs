module Helpers.CostasLikeArrays (countPermutationsUpToDihedralSymmetry, distinctDirections, distinctDistances) where
import Data.List (elemIndex, nub)
import Data.Maybe (mapMaybe)
import Data.Ratio ((%))
import Helpers.Subsets (eachPair)

type Permutation = [Int]

distinctDistances :: Permutation -> Int
distinctDistances permutation = length $ nub $ map distanceSquare $ eachPair $ zip [0..] permutation where
  distanceSquare ((x1, y1), (x2, y2)) = (x1 - x2)^2 + (y1 - y2)^2

distinctDirections :: Permutation -> Int
distinctDirections permutation = length $ nub $ map direction $ eachPair $ zip [0..] permutation

-- direction :: (Int, Int) -> (Int, Int) -> Data.Ratio Int
direction ((x1, y1), (x2, y2)) = recip ratio `min` ratio where
  ratio = abs $ (x1 - x2) % (y1 - y2)

quarterTurn :: Int -> Permutation -> Permutation
quarterTurn n permutation = mapMaybe (`elemIndex` permutation) [0..n-1]

horizontalSymmetries :: Int -> [Permutation] -> [Permutation]
horizontalSymmetries n = concatMap flips where
  flips permutation = [permutation, flipped] where
    flipped = map (n-1-) permutation

verticalSymmetries :: [Permutation] -> [Permutation]
verticalSymmetries = concatMap flips where
  flips permutation = [permutation, flipped] where
    flipped = reverse permutation

-- There's surely a more elegant way to do this.
rotationalSymmetries :: Int -> [Permutation] -> [Permutation]
rotationalSymmetries n = concatMap turns where
  turns permutation = [permutation, quarterTurn n permutation]

canonicalRepresentative :: Int -> Permutation -> Permutation
canonicalRepresentative n permutation = minimum $ rotationalSymmetries n $ horizontalSymmetries n $ verticalSymmetries [permutation]

countPermutationsUpToDihedralSymmetry :: Int -> [Permutation] -> Int
countPermutationsUpToDihedralSymmetry n permutations = length $ nub $ map (canonicalRepresentative n) permutations
