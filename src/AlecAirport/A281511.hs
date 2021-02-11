module AlecAirport.A281511 (a281511) where
import Data.List (elemIndices)
import Helpers.GridLabeling (everyPair)

a281511 :: Int -> Int
a281511 n = a281511_list !! (n - 1)

a281511_list :: [Int]
a281511_list = recurse 1 $ repeat [1..] where
  recurse i (candidates:ps) = head candidates : recurse (i + 1) nextGenerationOfCandidates where
    nextGenerationOfCandidates = remainingCandidates knownSequence ps where
      knownSequence = take (i - 1) a281511_list ++ [head candidates]

remainingCandidates :: (Ord a) => [a] -> [[a]] -> [[a]]
remainingCandidates as = stripIllegalValues a targetIndices where
  a = last as
  targetIndices = gapSizes a as

gapSizes :: (Eq a) => a -> [a] -> [Int]
gapSizes a as = map (uncurry subtract) $ everyPair $ elemIndices a as

stripIllegalValues :: (Ord a) => a -> [Int] -> [[a]] -> [[a]]
stripIllegalValues a indices = zipWith (curry optionalDelete) [1..] where
  optionalDelete (i, as)
    | i `elem` indices = deleteIfExists a as
    | otherwise        = as

-- Assuming that a is monotonically increasing
deleteIfExists :: (Ord a) => a -> [a] -> [a]
deleteIfExists _ [] = []
deleteIfExists x ys'@(y:ys)
  | x > y  = y : deleteIfExists x ys
  | x == y = ys
  | x < y  = ys'
