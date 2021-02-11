module AlecSequences.A271773 (a271773) where
import Data.List (genericIndex, genericLength)
import Helpers.AlecHelper (buildAlecSequence)

a271773 :: Integral a => a -> a
a271773 i = genericIndex a271773_list (i - 1)

a271773_list :: Integral a => [a]
a271773_list = buildAlecSequence matchingIndices maximum [0]

matchingIndices :: Integral a => [a] -> [a]
matchingIndices list = filter f [1..n - 1] where
  n = genericLength list + 1
  f index = (n - a_i) `mod` index == 0 where
    a_i = genericIndex list (index - 1)
