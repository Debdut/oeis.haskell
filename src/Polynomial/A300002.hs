module Polynomial.A300002 (a300002, a300002_list) where
import Helpers.Polynomial (polynomialAvoidingSequence)
import Data.List (genericTake, subsequences)

a300002 :: Int -> Integer
a300002 n = a300002_list !! (n - 1)

a300002_list :: [Integer]
a300002_list = polynomialAvoidingSequence (tail . subsequences)
