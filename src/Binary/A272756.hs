module Binary.A272756 (a272756) where
import Data.List (find)
import Data.Maybe (fromJust)
import HelperSequences.A070939 (a070939)

a272756 :: Int -> Int
a272756 n = a272756_list !! (n - 1)

a272756_list :: [Int]
a272756_list = 3 : remaining 1 where
  remaining i = next_term : remaining (i + 1) where
    next_term = fromJust $ find (\k -> a070939 (i * k + k) < k) [a272756 i..]
