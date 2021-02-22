module HelperSequences.A000196 (a000196) where

a000196 :: Integral a => a -> Int
a000196 = floor . sqrt . fromIntegral
