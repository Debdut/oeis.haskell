module Helpers.AlecHelper (buildAlecSequence) where
import Data.List (genericLength)

buildAlecSequence :: Integral a => ([a] -> [a]) -> ([a] -> a) -> [a] -> [a]
buildAlecSequence matchingIndices reducer seed = alecSequence where
  alecSequence = seed ++ remainder (genericLength seed) where
    remainder len = a_i : remainder (len + 1) where
      a_i = reducer $ matchingIndices $ take len alecSequence
