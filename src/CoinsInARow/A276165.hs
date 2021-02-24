module CoinsInARow.A276165 (a276165) where
import HelperSequences.A066099 (a066099_row)
import Helpers.CoinsInARow (minimaxDifference)

a276165 :: Int -> Int
a276165 = minimaxDifference . a066099_row
