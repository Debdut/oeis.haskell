module HelperSequences.A035516 (a035516, a035516_list, a035516_row) where
import HelperSequences.A000045 (a000045_list)

a035516 :: Int -> Integer
a035516 = (a035516_list !!)

a035516_list :: [Integer]
a035516_list = concatMap a035516_row [0..]

a035516_row :: Integer -> [Integer]
a035516_row 0 = [0]
a035516_row n = h : t where
  h = last $ takeWhile (<= toInteger n) a000045_list
  t = if n == h then [] else a035516_row (n - h)
