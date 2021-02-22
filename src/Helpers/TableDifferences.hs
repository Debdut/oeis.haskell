module Helpers.TableDifferences (differenceCount) where
import Data.List (tails)
differenceCount :: Int -> [Int] -> Int
differenceCount n as = length $ filter isValid $ tails validTerms where
  isValid []     = False
  isValid (k:ks) = (n + k) `elem` ks
  -- All terms such that the gap with next neighbor is not greater than n.
  validTerms = head as : map snd (takeWhile (\(x,y) -> y - x <= n) $ zip as (tail as))
