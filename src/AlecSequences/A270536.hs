module AlecSequences.A270536 (a270536) where
import Data.List (genericIndex, genericLength)
import Helpers.AlecHelper (buildAlecSequence)
import Helpers.Primes (isPrime)
import HelperSequences.A032741 (a032741)

a270536 :: Integral a => a -> a
a270536 i = genericIndex a270536_list (i - 1)

a270536_list :: Integral a => [a]
a270536_list = buildAlecSequence matchingIndices sum [0]

matchingIndices :: Integral a => [a] -> [a]
matchingIndices list = filter f [1..n] where
  n = genericLength list
  f i = not $ isPrime $ n + 1 + a_i where
    a_i = genericIndex list (i - 1)
