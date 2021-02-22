module Helpers.Permutation (inversePermutation) where
import Data.List (elemIndex)

inversePermutation :: Integral a => a -> [a] -> [a]
inversePermutation startingValue permutation = recurse startingValue where
  recurse s = case elemIndex (fromIntegral s) permutation of
    Just index -> (fromIntegral index + startingValue) : recurse (s + 1)
    _          -> []
