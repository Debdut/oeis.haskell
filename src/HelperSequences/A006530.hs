module HelperSequences.A006530 (a006530) where
import HelperSequences.A238689 (a238689_row)

a006530 :: Integer -> Integer
a006530 = maximum . a238689_row
