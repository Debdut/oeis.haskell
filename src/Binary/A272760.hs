module Binary.A272760 (a272760) where
import Data.List (find)
import Data.Maybe (fromMaybe)
import HelperSequences.A000120 (a000120)
import Binary.A272756 (a272756)

a272760 :: Int -> Int
a272760 n = fromMaybe 0 $ find (\k -> a000120 (n * k) == k) $ reverse [1..a272756 n]
