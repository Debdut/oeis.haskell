module Binary.A306921 where
import Helpers.Binary (lastBits)

a306921_list :: [Int]
a306921_list = 1 : recurse 1 where
  recurse n = nextTerm : recurse (n + 1) where
    nextTerm = sum $ map (a306921_list !!) $ lastBits n

a306921 :: Int -> Int
a306921 = (!!) a306921_list
