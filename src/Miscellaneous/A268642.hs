module Miscellaneous.A268642 (a268642, a268642_list) where
import Data.Ratio ((%))

a268642 :: Int -> Integer
a268642 n = a268642_list !! (n - 1)

a268642_list :: [Integer]
a268642_list = 1 : recurse 1 where
  recurse n = nextTerm : recurse (n + 1) where
    nextTerm
      | candidate `elem` currentList = 3 * a268642 n
      | otherwise                    = candidate where
      candidate   = ceiling (a268642 n % 2)
      currentList = take n a268642_list
