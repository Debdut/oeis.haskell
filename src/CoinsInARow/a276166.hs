module CoinsInARow.A276166 (a276166) where
import HelperSequences.A066099 (a066099_row)
import Helpers.CoinsInARow (minimaxScore)

a276166 :: Int -> Int
a276166 = minimaxScore . a066099_row
