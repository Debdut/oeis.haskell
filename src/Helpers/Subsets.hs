module Helpers.Subsets (allSubsets, oneIndexed, zeroIndexed, a048793_tabf, combinations, eachPair, choose) where
import Data.Bits ((.&.))
import Data.List (tails)

a048793_tabf :: [[Integer]]
a048793_tabf = map (reverse . oneIndexed) [0..]

oneIndexed :: Integer -> [Integer]
oneIndexed n = map (1 +) (zeroIndexed n)

zeroIndexed :: Integer -> [Integer]
zeroIndexed n = count n 0 where
  count 0 _ = []
  count m c = count (m `div` 2) (c + 1) ++ take (fromIntegral $ m .&. 1) [c]

-- https://hackage.haskell.org/package/combinatorial-0.1.0.1/docs/Combinatorics.html#v:tuples
combinations :: Int -> [a] -> [[a]]
combinations =
   let go r =
         case compare r 0 of
            LT -> const []
            EQ -> const [[]]
            GT -> concatMap (\(y:ys) -> map (y:) (go (r-1) ys)) . init . tails
   in  go

-- Surely there's a better implementation?
allSubsets :: [a] -> [[a]]
allSubsets []  = [[]]
allSubsets (x:xs) = allSubsets xs ++ map (x:) (allSubsets xs)
-- Similar to `combinations 2`
eachPair :: [a] -> [(a, a)]
eachPair [] = []
eachPair (h:as) = map (\a -> (h, a)) as ++ eachPair as

choose 0 _ = [[]]
choose _ [] = []
choose n (x:xs) =
    [x : subs | subs <- choose (n-1) xs]
    ++ choose n xs
