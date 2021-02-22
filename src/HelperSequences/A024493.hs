module HelperSequences.A024493 (a024493) where
import Helpers.Factorials (binomial)

a024493 :: Integer -> Integer
a024493 n = sum $ takeWhile (>0) $ map (binomial n) [0,3..]
