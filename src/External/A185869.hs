module External.A185869 (a185869, a185869_list) where
import Data.List (genericReplicate)

a185869 :: Int -> Integer
a185869 n = a185869_list !! (n - 1)

a185869_list :: [Integer]
a185869_list = scanl (+) 2 $ a' 1 where
  a' n = 2 * n + 3 : genericReplicate n 2 ++ a' (n + 1)
