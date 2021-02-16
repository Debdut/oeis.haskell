module External.A065413 (a065413) where
import HelperSequences.A000120 (a000120)
import Binary.A272756 (a272756)

a065413 :: Int -> Int
a065413 n = length (filter criteria [1..a272756 n]) where
  criteria i = i == a000120 (n * i)
