module HelperSequences.A024495 (a024495) where
import Helpers.Factorials (binomial)

a024495 :: Integer -> Integer
a024495 n = sum $ takeWhile (>0) $ map (binomial n) [2,5..]
