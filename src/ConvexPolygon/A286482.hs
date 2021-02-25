module ConvexPolygon.A286482 (a286482, a286482_list) where
import Helpers.ConvexHull (findNextSequence, increment)

a286482 :: Int -> Int
a286482 n = length $ head $ filter (not . null) $ map sequencesWithMinimalBound [n `div` 2..] where
  sequencesWithMinimalBound upperBound = allSequences upperBound n

a286482_list :: [Int]
a286482_list = map a286482 [1..]


allSequences upperBound n = recurse [] $ findNextSequence upperBound n [1] where
  recurse accum [] = accum
  recurse accum a = recurse (a : accum) (findNextSequence upperBound n $ increment upperBound $ reverse a)
