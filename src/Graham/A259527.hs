-- "259527" => "A259527 a(n) counts the number of sequences n = b_1 < b_2 < ... < b_t = A006255(n) such that b_1*b_2*...*b_t is a perfect square.",
module Graham.A259527 (a259527) where
import Graham.A260510 (a260510)

a259527 :: Integer -> Integer
a259527 = (2^) . a260510
