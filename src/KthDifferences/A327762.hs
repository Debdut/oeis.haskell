module KthDifferences.A327762 (a327762_list, a327762) where
import Data.Set (Set)
import qualified Data.Set as Set
import Data.Maybe (Maybe, mapMaybe)

type KthDifferences = ([Integer], Set Integer)

a327762_list :: [Integer]
a327762_list = take 56 $ recurse ([], Set.empty) where
  recurse kthDifferences = n : recurse ds where
    ds@(n:_,_) = nextTerm kthDifferences

a327762 :: Int -> Integer
a327762 n = a327762_list !! (n-1)

updateDifferences :: [Integer] -> Integer -> KthDifferences -> Maybe KthDifferences
updateDifferences xs nextTerm ([], ds)
  | nextTerm `Set.member` ds = Nothing
  | otherwise            = Just (reverse (nextTerm : xs), Set.insert nextTerm ds)
updateDifferences xs nextTerm (r:rs, ds)
  | nextTerm `Set.member` ds = Nothing
  | otherwise            = updateDifferences (nextTerm : xs) (nextTerm - r) (rs, Set.insert nextTerm ds)

nextTerm :: KthDifferences -> KthDifferences
nextTerm ds = head $ mapMaybe (\t -> updateDifferences [] t ds) [1..]
