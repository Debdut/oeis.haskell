module HelperSequences.A228369 (a228369) where
import HelperSequences.A007814 (a007814)

a228369 n = a228369_list !! (n - 1)

a228369_list = concatMap a228369_row [1..]

a228369_tabf = map a228369_row [1..]

a228369_row :: Integer -> [Integer]
a228369_row 0 = []
a228369_row n
  | 2^k == 2 * n + 2 = [k - 1]
  | otherwise        = a228369_row (n `div` 2^k) ++ [k] where
    k = a007814 (n + 1) + 1
