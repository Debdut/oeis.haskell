module AlecSequences.A276127 (a276127) where
import EKG.A064413 (a064413)
import HelperSequences.A001414 (a001414)

a276127 :: Int -> Integer
a276127 1 = 1
a276127 n = a001414 $ a064413 n
