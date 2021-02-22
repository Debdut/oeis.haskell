module Poset.A334111 (a334111) where
import Poset.A064097 (a064097)
import Data.Set (Set)
import qualified Data.Set as Set

a334111 :: Int -> Integer
a334111 = (!!) a334111_list

a334111_list :: [Integer]
a334111_list = concat a334111_rows

a334111_rows :: [[Integer]]
a334111_rows = zipWith takeUntil powersOfTwo a334111_rows' where
  a334111_rows' = partition' (fromIntegral . a064097)  [1..]
  powersOfTwo = map (2^) [0..]

partition' :: (a -> Int) -> [a] -> [[a]]
partition' p = foldr (select p) $ repeat []

select :: (a -> Int) -> a -> [[a]] -> [[a]]
select index x = prependTo (index x) x

prependTo :: Int -> a -> [[a]] -> [[a]]
prependTo 0 b ~(bs:bss) = (b:bs):bss
prependTo n b ~(bs:bss) = bs : prependTo (n-1) b bss

takeUntil :: Ord a => a -> [a] -> [a]
takeUntil _ [] = []
takeUntil n (x:xs)
  | x < n     = x : takeUntil n xs
  | x == n    = [x]
  | otherwise = []
