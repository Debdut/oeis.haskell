module AlecSequences.A269347 (a269347) where
import Data.List (genericIndex, genericTake)

a269347 :: Integer -> Integer
a269347 1 = 1
a269347 n = genericIndex a269347_list (n - 1)

a269347_list :: [Integer]
a269347_list = map fst a269347_list_with_index

a269347_list_with_index :: [(Integer, Integer)]
a269347_list_with_index = (1, 1) : remainder 2 where
  remainder k = (a_k, k) : remainder (k + 1) where
    a_k = sum $ map snd $ filter f initial where
      f (a_i, _) = k `mod` a_i == 0
      initial = genericTake (k - 1) a269347_list_with_index
