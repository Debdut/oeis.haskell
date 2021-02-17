module Braxton.A284434 (a284434) where
import Helpers.BraxtonHelper (enumerateSequences, SymmetricRelation(..), ReflexiveRelation(..))

a284434 n = length $ enumerateA284434 n n
enumerateA284434 = enumerateSequences NonReflexive Symmetric product
-- (1,2,1,6,2,24,6,...)
-- Counts A282169
