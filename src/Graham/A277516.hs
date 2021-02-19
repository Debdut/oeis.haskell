module Graham.A277516 (a277516) where
import Graham.A277278 (a277278)

-- a(n) = smallest k >= 0 for which there is a sequence
--   n = b_1 < b_2 < ... < b_t = n + k
-- such that b_1 + b_2 +...+ b_t is a perfect square.
a277516 :: Integer -> Integer
a277516 n = a277278 n - n
