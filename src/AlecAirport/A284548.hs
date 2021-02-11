module AlecAirport.A284548 (a284548) where
import Data.List (find)
import Data.Maybe (fromJust)
import Data.Ratio ((%))

a284548_list = alecAirportHelper div

a284548 = (!!) a284548_list

alecAirportHelper :: (Int -> Int -> Int) -> [Int]
alecAirportHelper f = 1 : remaining 1 (repeat []) [Just 1] where
  remaining :: Int -> [[Int]] -> [Maybe Int] -> [Int]
  remaining n (l:ls) knownTerms = a_n : remaining (n + 1) nextGeneration (Just a_n : knownTerms) where
    a_n = fromJust $ find (not . (`elem` l)) [1..]
    nextGeneration = zipWith optionalCons ls termsToMarkOff where
      termsToMarkOff = take (f n a_n) knownTerms ++ repeat Nothing

optionalCons :: [a] -> Maybe a -> [a]
optionalCons = foldr (:)
