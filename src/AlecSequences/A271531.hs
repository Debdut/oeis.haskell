module AlecSequences.A271531 (a271531) where
import Data.List (genericIndex, genericLength)
import Helpers.AlecHelper (buildAlecSequence)

a271531 :: Integral a => a -> a
a271531 i = genericIndex a271531_list (i - 1)

a271531_list :: Integral a => [a]
a271531_list = buildAlecSequence matchingIndices (foldr lcm 1) [1]

matchingIndices :: Integral a => [a] -> [a]
matchingIndices list = filter f [1..n - 1] where
  n = genericLength list + 1
  f index = (n - a_i) `mod` index == 0 where
    a_i = genericIndex list (index - 1)
