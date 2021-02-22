module HelperSequences.A005117 (a005117, a005117_list) where
import Data.List (genericIndex)

a005117 :: Integral a => a -> a
a005117 n = genericIndex a005117_list (n - 1)

-- This isn't efficient, but it'll work for now.
a005117_list :: Integral a => [a]
a005117_list = filter squarefree [1..] where
  squarefree k = all (\i -> k `mod` i^2 /= 0) [2..max] where
    max = floor $ sqrt $ fromIntegral k
