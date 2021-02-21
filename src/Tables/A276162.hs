module Tables.A276162 (a276162, a276162T) where
import Helpers.Table (tableByAntidiagonals)

-- Table read by antidiagonals: T(n, k) = floor(sqrt(k) * floor(n/sqrt(k) + 1))
-- n > 0, k > 0.
a276162 :: Integral a => a -> a
a276162 i = a276162T n k where
  (n, k) = (n' + 1, k' + 1) where
    (n', k') = tableByAntidiagonals (i - 1)


-- Square array read by antidiagonals: T(n,k) = Product_{i = 1..k} (GCD(n, i)).
a276162T :: Integral a => a -> a -> a
a276162T n k = product $ map (gcd n) [1..k]
