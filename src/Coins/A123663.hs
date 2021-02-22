module Coins.A123663 (a123663) where
import Data.List (genericIndex, genericReplicate)
import Helpers.ListHelpers (concatReplicate)

a123663 :: Integral a => a -> Integer
a123663 n = genericIndex a123663_list (n - 1)

a123663_list :: [Integer]
a123663_list = scanl1 (+) $ 0 : remainder 0 where
  remainder n = sides ++ remainder (n + 1) where
    sides = concatReplicate 2 $ genericReplicate n 2 ++ [1]
