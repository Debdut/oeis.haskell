module AlecSequences.A096216 (a096216) where
import Helpers.AlecHelper (buildAlecSequence)
import Data.List (genericIndex, genericLength)

a096216 :: Integral a => a -> a
a096216 n = genericIndex a096216_list (n - 1)

a096216_list :: Integral a => [a]
a096216_list = buildAlecSequence matchingIndices genericLength [1]

matchingIndices :: Integral a => [a] -> [a]
matchingIndices list = filter f [1..n] where
  n = genericLength list
  f index = gcd (n + 1) (genericIndex list (index - 1)) == 1
