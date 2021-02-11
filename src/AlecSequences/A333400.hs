module AlecSequences.A333400 (a333400, a333400_list) where
import AlecSequences.A333398 (a333398_list)
import Helpers.ListHelpers (firstDifferences)

a333400_list = 0 : firstDifferences a333398_list

a333400 n = a333400_list !! (n - 1)
