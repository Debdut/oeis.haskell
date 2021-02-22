module HelperSequences.A003059 (a003059) where

a003059 :: Int -> Int
a003059 n = a003059_list !! (n - 1)

a003059_list :: [Int]
a003059_list = list 1 where
  list n = replicate (2 * n - 1) n ++ list (n + 1)
