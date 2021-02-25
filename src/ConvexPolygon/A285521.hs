module ConvexPolygon.A285521 (a285521, a285521_row, a285521_list) where
import Helpers.ConvexHull (findNextSequence)

a285521 :: Int -> Int
a285521 n = a285521_list !! (n - 1)

a285521_row :: Int -> [Int]
a285521_row n = head $ filter (not . null) $ map findEarliestSequence [n `div` 2..] where
  findEarliestSequence upperBound = findNextSequence upperBound n [1]

a285521_list :: [Int]
a285521_list = concatMap a285521_row [1..]
