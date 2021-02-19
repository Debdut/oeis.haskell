module TableDifferences.A333880 (a333880) where
import Helpers.TableDifferences (differenceCount)

powerTable :: [[Int]]
powerTable = map (\k -> map (^k) [0..]) [2..]

a333880 :: Int -> Int
a333880 n = sum $ map (differenceCount n) table where
  table = takeWhile (\r -> r !! 2 <= n + 1) powerTable
