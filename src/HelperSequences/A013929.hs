module HelperSequences.A013929 (a013929) where
import Helpers.Primes (primePowers)

nonSquarefree = any (>1) . map snd . primePowers

a013929_list = filter nonSquarefree [1..]
a013929 n = a013929_list !! (n - 1)
