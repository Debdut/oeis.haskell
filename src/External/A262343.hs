module External.A262343 (a262343) where

a262343 :: Integral a => a -> a
a262343 n
  | m == 0 =     div n 2 - 1
  | m == 1 = 3 *     n   - 6
  | m == 2 = 3 * div n 2 - 3
  | m == 3 =         n   - 2
  | m == 4 = 3 * div n 2 - 3
  | m == 5 = 3 *     n   - 6 where
    m = mod n 6
