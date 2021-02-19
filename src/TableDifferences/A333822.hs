module TableDifferences.A333822 (a333822) where
import Helpers.TableDifferences (differenceCount)

figurateTable :: [[Int]]
figurateTable = map (\k -> map (\n -> ((k-2)*n^2 + (4-k)*n) `div` 2) [0..]) [3..]

a333822 :: Int -> Int
a333822 n = sum $ map (differenceCount n) table where
  table = takeWhile (\r -> r !! 2 <= n + 1) figurateTable
