module AlecSequences.A333401 (a333401) where
import AlecSequences.A333400 (a333400_list)
import Data.List (elemIndices)

a333401 n = abs (f n - f (-n)) where
    f i = head $ elemIndices i a333400_list
