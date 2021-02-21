module Tables.A273620 (a273620, a273620T) where
import Helpers.Table (tableByAntidiagonals)

-- Table read by antidiagonals: T(n, k) = floor(sqrt(k) * floor(n/sqrt(k) + 1))
-- n > 0, k > 0.
a273620 :: Integral a => a -> a
a273620 i = a273620T n k where
  (n, k) = (n' + 1, k' + 1) where
    (n', k') = tableByAntidiagonals (i - 1)

a273620T :: Integral a => a -> a -> a
a273620T n k = floor $ sqrt k' * c where
  (n', k') = (fromIntegral n, fromIntegral k)
  c = fromIntegral $ floor $ n' / sqrt k' + 1
