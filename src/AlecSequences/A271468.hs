module AlecSequences.A271468 (a271468, a271468_list) where
import AlecSequences.A271328 (a271328)
import Data.List (genericIndex)

a271468 :: Integer -> Integer
a271468 n = genericIndex a271468_list (n - 1)

a271468_list :: [Integer]
a271468_list = filter (\i -> a271328 i /= (i^2 + 1)) [1..]
