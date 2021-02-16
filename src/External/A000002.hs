module External.A000002 (a000002) where

a000002 :: Int -> Int
a000002 n = a000002_list !! (n - 1)

a000002_list :: [Int]
a000002_list = [1, 2, 2] ++ remainder 1 3 where
  remainder t i = replicate (a000002 i) t ++ remainder (3 - t) (i + 1)
