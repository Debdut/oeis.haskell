module EKG.A256417 (a256417) where
import EKG.A064413 (a064413)
import Helpers.Primes (isPrime)

a256417 :: Int -> Integer
a256417 n
  | isPrime     $ a064413 n = a064413 n * 2
  | thricePrime $ a064413 n = a064413 n * 2 `div` 3
  | otherwise               = a064413 n where
    thricePrime k = k `mod` 3 == 0 && isPrime (k `div` 3)
