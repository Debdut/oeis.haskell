module Braxton.A283557 (a283557) where
import Helpers.BraxtonHelper (enumerateSequences, SymmetricRelation(..), ReflexiveRelation(..))

a283557 n = length $ enumerateA283557 n n
enumerateA283557 = enumerateSequences NonReflexive NonSymmetric product
