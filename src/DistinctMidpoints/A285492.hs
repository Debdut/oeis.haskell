module DistinctMidpoints.A285492 (a285492_list, a285492) where
import Helpers.Midpoints (nonDuplicateMidpointSequence, ArithmeticProgression(..), Injectivity(..))
-- For all distinct integers n, m, j, k such that (n, m) != (j, k) != (m, n),
-- (n + m, a(n) + a(m)) != (j + k, a(j) + a(k))

a285492 n = a285492_list !! (n - 1)

a285492_list = nonDuplicateMidpointSequence Nonarithmetic Injective
