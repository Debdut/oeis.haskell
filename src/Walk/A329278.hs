module Walk.A329278 (a329278) where

a329278_row :: Int -> [Integer]
a329278_row n = map p [0..2^n-1] where
  p k = div (k^2 + k) 2 `mod` 2^n

a329278_list :: [Integer]
a329278_list = concatMap a329278_row [0..]

a329278 :: Int -> Integer
a329278 = (!!) a329278_list
