module Binary.A272759 (a272759) where
import Data.List (find)
import Data.Maybe (fromMaybe)
import HelperSequences.A000120 (a000120)
import Binary.A272756 (a272756)

a272759 :: Int -> Int
a272759 n = fromMaybe 0 $ find (\k -> a000120 (n * k) == k) [1..a272756 n]
