module PowerDivisibility.A277802 (a277802) where
import PowerDivisibility.A048798 (a048798)
import PowerDivisibility.A004709 (a004709)

a277802 :: Int -> Integer
a277802 = a048798 . a004709
