module CoinsInARow.A276167 (a276167) where
import HelperSequences.A066099 (a066099_row)
import Helpers.CoinsInARow (minimaxScore2)

a276167 :: Int -> Int
a276167 = minimaxScore2 . a066099_row
