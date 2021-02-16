module External.A137734 (a137734) where

a137734 :: Int -> Integer
a137734 n = a137734_list !! n

a137734_list :: [Integer]
a137734_list = 1 : remaining 1 1 where
  remaining n maxTerm = nextTerm : remaining (n + 1) (max nextTerm maxTerm) where
    nextTerm = ceiling $ toRational n / toRational maxTerm
