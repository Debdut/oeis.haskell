module Binary.A308092 (a308092, a308092_list) where
import Helpers.Binary (bitsList)

a308092_list :: [Integer]
a308092_list = 1 : 2 : recurse [] (6, 3) where
  recurse l (a, b) = a - b : recurse bits (newA, a) where
    (bit:bits) = l ++ bitsList (a - b)
    newA
      | bit       = 2 * a + 1
      | otherwise = 2 * a

a308092 :: Int -> Integer
a308092 n = a308092_list !! (n - 1)

a324608 :: Int -> Int
a324608 = length . filter id . bitsList . a308092
