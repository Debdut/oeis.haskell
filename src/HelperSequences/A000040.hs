module HelperSequences.A000040 (a000040, a000040_list) where
import Data.List (genericIndex)

-- From Reinhard Zumkeller, Apr 07 2014 in OEIS
a000040 :: Integral a => a -> Integer
a000040 n = genericIndex a000040_list (n - 1)

a000040_list :: [Integer]
a000040_list = base ++ larger where
   base   = [2, 3, 5, 7, 11, 13, 17]
   larger = p : filter prime more
   prime n = all ((> 0) . mod n) $ takeWhile (\x -> x*x <= n) larger
   _ : p : more = roll $ makeWheels base
   roll (Wheel n rs) = [n * k + r | k <- [0..], r <- rs]
   makeWheels = foldl nextSize (Wheel 1 [1])
   nextSize (Wheel size bs) q = Wheel (size * q)
       [r | k <- [0..q-1], b <- bs, let r = size*k+b, mod r q > 0]
data Wheel = Wheel Integer [Integer]
