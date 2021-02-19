module Graham.A255363 (a255363) where
import Graham.A006255 (a006255)
import HelperSequences.A070229 (a070229)

a255363 :: Int -> Integer
a255363 n = a255363_list !! (n - 1)

a255363_list :: [Integer]
a255363_list = filter (\k -> a006255 k == a070229 k) [1..]
