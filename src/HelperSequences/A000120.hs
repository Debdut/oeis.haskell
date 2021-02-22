module HelperSequences.A000120 (a000120) where
import Data.Bits ((.&.), shiftR)

a000120 :: Int -> Int
a000120 n = go n 0 where
  go 0 accum = accum
  go k accum = go k' accum'  where
    k' = shiftR k 1
    accum' = k .&. 1 + accum
