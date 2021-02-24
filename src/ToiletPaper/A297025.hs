module ToiletPaper.A297025 (a297025) where
import HelperSequences.A220096 (a220096)

countIterations :: (a -> a) -> (a -> Bool) -> a -> Int
countIterations iteratingFunction terminatingCondition = recurse 0 where
  recurse counter value
    | terminatingCondition value = counter
    | otherwise = recurse (counter + 1) (iteratingFunction value)

a297025 :: Integer -> Int
a297025 = countIterations a220096 (==0)
