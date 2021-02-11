module Miscellaneous.A273156 (a273156) where
import HelperSequences.A035516 (a035516_row)

a273156 :: Integer -> Integer
a273156 = product . a035516_row
