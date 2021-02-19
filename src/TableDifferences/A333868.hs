module TableDifferences.A333868 (a333868) where
import Helpers.Factorials (binomial)
import Helpers.TableDifferences (differenceCount)

simplexTable :: [[Int]]
simplexTable = map (\k -> map (`binomial` k) [k-1..]) [2..]

a333868 :: Int -> Int
a333868 n = sum $ map (differenceCount n) table where
  table = takeWhile (\r -> r !! 2 <= n + 1) simplexTable
