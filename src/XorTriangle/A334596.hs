module XorTriangle.A334596 (a334596) where
import Helpers.Binary (bitsList)
import XorTriangle.A334556 (a334556_list)

-- Quite slow implementation.
a334596_list :: [Integer]
a334596_list = recurse 1 0 a334556_list where
  recurse l c (a:as)
    | length (bitsList a) == l = recurse l (c + 1) as
    | otherwise                = c : recurse (l + 1) 0 (a:as)

a334596 :: Int -> Integer
a334596 n = a334596_list !! (n - 1)

