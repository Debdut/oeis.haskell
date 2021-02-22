module HelperSequences.A087172 (a087172) where
import HelperSequences.A000045 (a000045_list)
import Data.List (genericReplicate, genericIndex)

a087172 :: Integer -> Integer
a087172 n = genericIndex a087172_list (n - 1)

a087172_list :: [Integer]
a087172_list = concatMap (uncurry genericReplicate) derivativeSequence where
    derivativeSequence = zip (tail a000045_list) (drop 2 a000045_list)
