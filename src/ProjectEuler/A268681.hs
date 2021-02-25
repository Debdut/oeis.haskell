module ProjectEuler.A268681 (a268681) where
import Data.List (nub)
import Tables.A007318 (a007318_row)

a268681 :: Integer -> Integer
a268681 n = sum $ filter squareFree $ nub $ concatMap a007318_row [0..n-1] where
    squareFree k = all (\d -> k `mod` d /= 0) $ map (^2) [2..20]
