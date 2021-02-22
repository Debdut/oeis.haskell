module Helpers.ListHelpers (allDistinct, cartesianProduct, concatReplicate, firstDifferences, reciprocalSum, runLengths, zipWithPadding) where
import Data.List (group)
import Data.Set (Set)
import qualified Data.Set as Set
-- concatReplicate is to replicate as concatMap is to map
concatReplicate :: Int -> [a] -> [a]
concatReplicate n list = take (n * length list) $ cycle list

-- reciprocalSum [2,5] = (1 % 2) + (1 % 5)
--                     = 7 % 1
reciprocalSum :: Integral a => [a] -> Rational
reciprocalSum = sum . map (recip . toRational)

runLengths :: Eq a => [a] -> [Int]
runLengths = map length . group

-- Inspired by:
-- http://stackoverflow.com/questions/22403029/how-to-zip-lists-with-different-length
zipWithPadding :: a -> [a] -> [a] -> [(a, a)]
zipWithPadding pad (a:as) (b:bs) = (a, b) : zipWithPadding pad as bs
zipWithPadding pad as     []      = zip as (repeat pad)
zipWithPadding pad []      bs     = zip (repeat pad) bs

firstDifferences :: Integral a => [a] -> [a]
firstDifferences [] = []
firstDifferences ls'@(_:ls) = zipWith (-) ls ls'

allDistinct :: Ord a => [a] -> Bool
allDistinct = recurse Set.empty where
  recurse seen [] = True
  recurse seen (r:rs)
    | r `Set.member` seen = False
    | otherwise           = recurse (r `Set.insert` seen) rs

cartesianProduct 0 _        = []
cartesianProduct 1 elements = map (:[]) elements
cartesianProduct n elements = concatMap f $ cartesianProduct (n - 1) elements where
    f es = map (:es) elements

-- minBy :: (a -> Int) -> [a] -> a
-- minBy f (a:as) = recurse a as where
--   recurse knownMin [] = knownMin
--   recurse knownMin (x:xs) = if f knownMin <= f x then recurse knownMin xs else recurse x xs
--
-- minByUniq :: (a -> Int) -> [a] -> a
-- minByUniq f (a:as) = recurse [a] as where
--   recurse [knownMin] [] = knownMin
--   recurse (x:x':xs) [] = error "Multiple minima" + show x + show x'
--   recurse knownMin (x:xs)
--     | f knownMin  < f x = recurse knownMin xs
--     | f knownMin == f x = recurse (x:knownMin)
--     | f knownMin  > f x = recurse x xs
--
-- allMin :: (a -> Int) -> [a] -> [a]
-- allMin _ []     = []
-- allMin f (a:as) = recurse [a] (f a) as where
--   recurse known _ []  = known
--   recurse known knownMin (x:xs)
--     | f x == knownMin = recurse (x : known) knownMin xs
--     | f x > knownMin  = recurse       known knownMin xs
--     | otherwise       = recurse         [x]    (f x) xs
