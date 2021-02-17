module Braxton.A283558 (a283558) where
import Helpers.BraxtonHelper (enumerateSequences, SymmetricRelation(..), ReflexiveRelation(..))

a283558 n = length $ enumerateA283558 n n
enumerateA283558 = enumerateSequences NonReflexive NonSymmetric sum
