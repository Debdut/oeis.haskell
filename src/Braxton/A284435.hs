module Braxton.A284435 (a284435) where
import Helpers.BraxtonHelper (enumerateSequences, SymmetricRelation(..), ReflexiveRelation(..))

a284435 n = length $ enumerateA284435 n n
enumerateA284435 = enumerateSequences Reflexive NonSymmetric product
-- (1,1,2,2,4,4,4,48,144,144...)
-- Counts A282193
