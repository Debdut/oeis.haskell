module Tables.A269331 (a269331) where
import Tables.A107435 (a107435)
import Tables.A268057 (a268057)

a269331 :: Int -> Int
a269331 i = filter f [1..] !! (i - 1) where
  f k = a107435 k == a268057 k
