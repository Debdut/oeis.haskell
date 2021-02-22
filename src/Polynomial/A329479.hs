module Polynomial.A329479 (a329479) where
import HelperSequences.A024493 (a024493)
import HelperSequences.A024495 (a024495)

a329479 :: Integer ->  Integer
a329479 n
  | even n = a024495 (n'-1) * a024493 n'
  | odd n = a024495 n' * a024493 n' where
    n' = n `div` 2
