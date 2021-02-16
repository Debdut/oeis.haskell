module External.A137735 (a137735) where

a137735 :: Int -> Integer
a137735 n = a137735_list !! n

a137735_list :: [Integer]
a137735_list = 1 : remaining 1 1 where
  remaining n maxTerm = nextTerm : remaining (n + 1) (max nextTerm maxTerm) where
    nextTerm = floor $ toRational n / toRational maxTerm
