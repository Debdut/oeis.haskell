module HelperSequences.A006519 (a006519) where
import HelperSequences.A001511 (a001511)

a006519 n = 2^(a001511 n - 1)
