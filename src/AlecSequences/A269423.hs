module AlecSequences.A269423 (a269423) where
import Helpers.AlecHelper (buildAlecSequence)
import Data.List (genericIndex, genericLength)

a269423 :: Integral a => a -> a
a269423 i = genericIndex a269423_list (i - 1)

a269423_list :: Integral a => [a]
a269423_list = buildAlecSequence matchingIndices sum [1]

matchingIndices :: Integral a => [a] -> [a]
matchingIndices list = filter f [1..n] where
  n = genericLength list
  f index = (n + 1 - a_i) `mod` index == 0 where
    a_i = genericIndex list (index - 1)
