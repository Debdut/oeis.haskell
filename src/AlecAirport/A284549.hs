module AlecAirport.A284549 (a284549) where
import Data.List (find)
import Data.Maybe (fromJust)
import Data.Ratio ((%))

a284549 = (!!) a284549_list

a284549_list = greedySequenceHelper (\n a_n -> ceiling (n % a_n))

greedySequenceHelper :: (Int -> Int -> Int) -> [Int]
greedySequenceHelper f = 1 : remaining 1 (repeat []) [Just 1] where
  remaining :: Int -> [[Int]] -> [Maybe Int] -> [Int]
  remaining n (l:ls) knownTerms = a_n : remaining (n + 1) nextGeneration (Just a_n : knownTerms) where
    a_n = fromJust $ find (not . (`elem` l)) [1..]
    nextGeneration = zipWith optionalCons ls termsToMarkOff where
      termsToMarkOff = take (f n a_n) knownTerms ++ repeat Nothing

optionalCons :: [a] -> Maybe a -> [a]
optionalCons as (Just a) = a : as
optionalCons as _ = as
