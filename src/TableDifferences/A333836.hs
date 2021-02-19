module TableDifferences.A333836 (a333836) where
import Helpers.TableDifferences (differenceCount)

figurateTable :: [[Int]]
figurateTable = map (\k -> map (\n -> ((k-2)*n^2 + (4-k)*n) `div` 2) [1..]) [3..]

a333836 :: Int -> Int
a333836 n = sum $ map (differenceCount n) table where
  table = takeWhile (\r -> r !! 1 <= n + 1) figurateTable
