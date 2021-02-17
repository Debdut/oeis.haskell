module Braxton.A284433 (a284433) where
import Helpers.BraxtonHelper (enumerateSequences, SymmetricRelation(..), ReflexiveRelation(..))

a284433 n = length $ enumerateA284433 n n
enumerateA284433 = enumerateSequences Reflexive Symmetric sum
-- (1,2,6,2,18,12,24,24,1320,...)
-- Counts A282167
