module AlecSequences.A269427 (a269427) where
import Helpers.AlecHelper (buildAlecSequence)
import Data.List (genericIndex, genericLength)

a269427 :: Integral a => a -> a
a269427 i = genericIndex a269427_list (i - 1)

a269427_list :: Integral a => [a]
a269427_list = buildAlecSequence matchingIndices genericLength [1]

matchingIndices :: Integral a => [a] -> [a]
matchingIndices list = filter f [1..n] where
  n = genericLength list
  f i = (a_i - n - 1) `mod` i == 0 where
    a_i = genericIndex list (i - 1)
