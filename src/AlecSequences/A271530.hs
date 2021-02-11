module AlecSequences.A271530 (a271530) where
import Data.List (genericIndex, genericLength)
import Helpers.AlecHelper (buildAlecSequence)

a271530 :: Integral a => a -> a
a271530 i = genericIndex a271530_list (i - 1)

a271530_list :: Integral a => [a]
a271530_list = buildAlecSequence matchingIndices product [1]

matchingIndices :: Integral a => [a] -> [a]
matchingIndices list = filter f [1..n - 1] where
  n = genericLength list + 1
  f index = (n - a_i) `mod` index == 0 where
    a_i = genericIndex list (index - 1)
