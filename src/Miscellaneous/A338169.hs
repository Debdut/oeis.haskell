module Miscellaneous.A338169 (a338169, a338169_list) where
import Data.List (sort)

a338169 :: Int -> Int
a338169 n = a338169_list !! (n - 1)

a338169_list :: [Int]
a338169_list = concat $ concat a338169_levels

a338169_levels :: [[[Int]]]
a338169_levels = [[]] : recurse 1 where
  recurse n = nextTerm : recurse (n + 1) where
    nextTerm = sort $ concatMap (allPlacements n) previousTerms
    previousTerms = concat $ take n a338169_levels

allPlacements :: a -> [a] -> [[a]]
allPlacements a = recurse [] where
  recurse prefix [] = [foldl (flip (:)) [a] prefix]
  recurse prefix (s:suffix) = nextPlacement : recurse (s:prefix) suffix where
    nextPlacement = foldl (flip (:)) [a] prefix ++ s:suffix
