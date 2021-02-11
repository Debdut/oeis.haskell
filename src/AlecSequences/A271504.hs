module AlecSequences.A271504 (a271504) where
import Data.List (genericIndex, genericLength)
import Helpers.AlecHelper (buildAlecSequence)
import HelperSequences.A032741 (a032741)

a271504 :: Integral a => a -> a
a271504 i = genericIndex a271504_list (i - 1)

a271504_list :: Integral a => [a]
a271504_list = buildAlecSequence matchingIndices (foldr lcm 1) [1]

matchingIndices :: Integral a => [a] -> [a]
matchingIndices list = filter f [1..n] where
  n = genericLength list
  f index = (n + 1) `mod` a_i == 0 where
    a_i = genericIndex list (index - 1)
