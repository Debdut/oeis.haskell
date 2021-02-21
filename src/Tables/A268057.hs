module Tables.A268057 (a268057) where
import Helpers.Table (triangleByRows)
import Helpers.RemainderGame (shrinkingDivisorIterations)

a268057 :: Int -> Integer
a268057 i = shrinkingDivisorIterations (n' + 1) (k' + 1) where
  (n', k') = triangleByRows (i - 1)
