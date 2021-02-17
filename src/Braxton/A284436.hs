module Braxton.A284436 (a284436) where
import Helpers.BraxtonHelper (enumerateSequences, SymmetricRelation(..), ReflexiveRelation(..))

a284436 n = length $ enumerateA284436 n n
enumerateA284436 = enumerateSequences Reflexive Symmetric product
-- (1,2,6,2,18,12,24,24,792...)
-- Counts A282170
