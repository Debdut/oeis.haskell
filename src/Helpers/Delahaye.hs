module Helpers.Delahaye (column, delahayeList, rowTable, antidiagonalTable, missingFromTables) where
import Data.Set (Set)
import qualified Data.Set as Set
import Helpers.Table (tableByAntidiagonals, triangleByRows)

type ExtensionCriteria a = [Integer] -> a -> Integer -> Bool
type TableUpdate a = Integer -> [Integer] -> a -> a

delahayeList :: Integer -> a -> ExtensionCriteria a -> TableUpdate a -> [Integer]
delahayeList k initialTable isValidExtension updateTable = thisList where
  thisList = k : recurse 1 initialTable where
    recurse n table = nextTerm : recurse (n+1) (updateTable nextTerm knownTerms table) where
      knownTerms = take n thisList
      nextTerm = head $ filter (isValidExtension knownTerms table) [maximum knownTerms + 1 ..]

column :: (Integer -> Integer -> Integer) -> [Integer] -> Integer -> Set Integer
column f knownTerms k = Set.fromList (map (f k) (k:knownTerms))

rowTable :: (Integer -> Integer -> Integer) -> (Int -> Integer) -> [Integer]
rowTable f aNumber = map ((\(i, j) -> f (aNumber (i + 1)) (aNumber (j + 1))) . triangleByRows) [0..]

antidiagonalTable :: (Integer -> Integer -> Integer) -> (Int -> Integer) -> [Integer]
antidiagonalTable f aNumber = map ((\(i, j) -> f (aNumber (i + 1)) (aNumber (j + 1))) . tableByAntidiagonals) [0..]

missingFromTables :: [Integer -> Integer -> Integer] -> [Integer] -> [Integer]
missingFromTables operations sequence = recurse 1 sequence Set.empty [] where
  recurse lower (n:ns) table knownTerms = newValues ++ recurse n ns table' (n:knownTerms) where
    table' = foldr1 Set.union (table : map (\f -> column f knownTerms n) operations)
    newValues = Set.toAscList $ Set.difference (Set.fromList [lower..n-1]) table
