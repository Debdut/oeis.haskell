module AlecSequences.A271774 (a271774) where
import Data.List (genericLength, genericIndex)
import Helpers.AlecHelper (buildAlecSequence)

a271774 :: Integral a => a -> a
a271774 i = genericIndex a271774_list (i - 1)

a271774_list :: Integral a => [a]
a271774_list = buildAlecSequence matchingIndices maximum [1]

matchingIndices :: Integral a => [a] -> [a]
matchingIndices list = filter f [1..n - 1] where
  n = genericLength list + 1
  f index = n `mod` a_i == 0 where
    a_i = genericIndex list (index - 1)
