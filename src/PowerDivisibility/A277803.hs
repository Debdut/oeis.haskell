module PowerDivisibility.A277803 (a277803) where
import PowerDivisibility.A277802 (a277802)
import PowerDivisibility.A004709 (a004709)

a277803 :: Int -> Integer
a277803 n = min (a277802 n) (a004709 n)
