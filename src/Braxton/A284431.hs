module Braxton.A284431 (a284431) where
import Helpers.BraxtonHelper (enumerateSequences, SymmetricRelation(..), ReflexiveRelation(..))

a284431 n = length $ enumerateA284431 n n
enumerateA284431 = enumerateSequences NonReflexive Symmetric sum
-- (1,2,1,6,2,42,12,116,...)
-- Counts A282166
