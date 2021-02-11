module AlecSequences.A273190 (a273190) where

a273190 :: Integer -> Int
a273190 n = length $ takeWhile (< 2 * n) $ dropWhile (< n) $ map (^2) [1..]
