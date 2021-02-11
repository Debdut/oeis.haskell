module AlecSequences.A280172 (a280172, a280172_list) where
import Tables.A273823 (a273823_row)
import Tables.A273824 (a273824_row)
import Data.List ((\\), sort, nub, genericIndex)

a280172 :: Integer -> Integer
a280172 n = genericIndex a280172_list (n - 1)

a280172_list :: [Integer]
a280172_list = map f [1..] where
  f n = head $ [1..] \\ map a280172 (rookIndices n)

-- Indices of the array that are above or to the left of n.
rookIndices :: Integral a => a -> [a]
rookIndices n = nub $ sort $ a273824_row n ++ a273823_row n
