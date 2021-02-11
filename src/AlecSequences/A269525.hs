module AlecSequences.A269525 (a269525) where
import Data.List (genericIndex, genericLength)
import Helpers.AlecHelper (buildAlecSequence)
import HelperSequences.A032741 (a032741)

a269525 :: Int -> Integer
a269525 i = a269525_list !! (i - 1)

a269525_list :: [Integer]
a269525_list = buildAlecSequence matchingIndices sum [1]

matchingIndices :: [Integer] -> [Integer]
matchingIndices list = filter f [1..n] where
  n = genericLength list
  f index = a032741 (n + 1) >= a032741 a_i where
    a_i = genericIndex list (index - 1)
