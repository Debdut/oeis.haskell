module AlecSequences.A270654 (a270654) where
import Data.List (genericIndex, genericLength)
import Helpers.AlecHelper (buildAlecSequence)
import Helpers.Primes (isPrime)
import HelperSequences.A032741 (a032741)

a270654 :: Integral a => a -> a
a270654 i = genericIndex a270654_list (i - 1)

a270654_list :: Integral a => [a]
a270654_list = buildAlecSequence matchingIndices sum [0]

matchingIndices :: Integral a => [a] -> [a]
matchingIndices list = filter f [1..n - 1] where
  n = 1 + genericLength list
  f i = isPrime $ n + a_i where
    a_i = genericIndex list (i - 1)
