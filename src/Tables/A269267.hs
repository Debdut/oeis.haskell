module Tables.A269267 (a269267) where
import Tables.A107435 (a107435)
import Tables.A268057 (a268057)

a269267 :: Int -> Int
a269267 i = filter f [1..] !! (i - 1) where
  f k = a107435 k /= a268057 k
