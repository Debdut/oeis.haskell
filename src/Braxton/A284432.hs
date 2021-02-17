module Braxton.A284432 (a284432) where
import Helpers.BraxtonHelper (enumerateSequences, SymmetricRelation(..), ReflexiveRelation(..))

a284432 n = length $ enumerateA284432 n n
enumerateA284432 = enumerateSequences Reflexive NonSymmetric sum
-- (1,1,2,2,4,4,4,48,48,144...)
-- Counts A282168
