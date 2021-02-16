module Palindromes.A298476 (a298476) where
import Helpers.Records (maxIndices)
import Palindromes.A298475 (a298475)

a298476 :: Int -> Int
a298476 n = a298476_list !! (n - 1)

-- Could be clever about this, and only check values in
-- (2^(A298476(n)))/2 <= a(n) < 2^(A298476(n)).
a298476_list :: [Int]
a298476_list = map (+1) $ maxIndices $ map a298475 [1..]
