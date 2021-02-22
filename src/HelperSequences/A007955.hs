module HelperSequences.A007955 (a007955) where
import HelperSequences.A000194 (a000194)
import HelperSequences.A000005 (a000005)

a007955 :: Int -> Int
a007955 n = a000194 $ n ^ a000005 n' where
  n' = toInteger n
