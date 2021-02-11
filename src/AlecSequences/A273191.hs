module AlecSequences.A273191 (a273191) where
import AlecSequences.A273190 (a273190)
import Helpers.ListHelpers (runLengths)

a273191 :: Int -> Int
a273191 n = a273191_list !! (n - 1)

a273191_list :: [Int]
a273191_list = runLengths $ map a273190 [0..]
