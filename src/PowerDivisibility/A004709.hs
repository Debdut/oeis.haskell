module PowerDivisibility.A004709 (a004709) where
import Helpers.Primes (primePowers)

a004709 :: Int -> Integer
a004709 n = a004709_list !! (n - 1)

a004709_list :: [Integer]
a004709_list = filter isCubefree [1..] where
  isCubefree n =  all ((<3) . snd) $ primePowers n
