module AlecSequences.A271503 (a271503) where
import Data.List (genericIndex, genericLength)
import Helpers.AlecHelper (buildAlecSequence)
import HelperSequences.A032741 (a032741)

a271503 :: Integral a => a -> a
a271503 i = genericIndex a271503_list (i - 1)

a271503_list :: Integral a => [a]
a271503_list = buildAlecSequence matchingIndices product [1]

matchingIndices :: Integral a => [a] -> [a]
matchingIndices list = filter f [1..n] where
  n = genericLength list
  f index = (n + 1) `mod` a_i == 0 where
    a_i = genericIndex list (index - 1)
