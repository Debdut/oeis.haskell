module KthDifferences.A327460 (a327460_list, a327460) where
import Data.Set (Set)
import qualified Data.Set as Set
import Data.Maybe (Maybe, mapMaybe)
type KthDifferences = ([Integer], Set Integer)

-- This computes the first 4837 terms correctly, computes the 4838th term incorrectly, and then gets stuck.
a327460_list :: [Integer]
a327460_list = recurse ([], Set.empty) where
  recurse kthDifferences = n : recurse ds where
    ds@(n:_,_) = nextTerm kthDifferences

a327460 :: Int -> Integer
a327460 n = a327460_list !! (n - 1)

updateDifferences :: [Integer] -> Integer -> KthDifferences -> Maybe KthDifferences
updateDifferences xs nextTerm ([], ds)
  | nextTerm `Set.member` ds = Nothing
  | otherwise            = Just (reverse (nextTerm : xs), Set.insert nextTerm ds)
updateDifferences xs nextTerm (r:rs, ds)
  | nextTerm `Set.member` ds = Nothing
  | getsStuck xs         = Nothing
  | otherwise            = updateDifferences (nextTerm : xs) (nextTerm - r) (rs, Set.insert nextTerm ds)

nextTerm :: KthDifferences -> KthDifferences
nextTerm ds = head $ mapMaybe (\t -> updateDifferences [] t ds) [1..]

-- This check needs to be more sophisticated.
-- See 2019-09-25 email from Rémy Sigrist for details:
-- a(n+1) != (Sum_{k = i..j} Sum_{m = 1..k-1} D(m) ) / (j-i+1) for 1 <= i <= j <= n+1
getsStuck :: [Integer] -> Bool
getsStuck (d1:d2:_) = d1 + d2 == 0
getsStuck _ = False

a328071_rows :: [[Integer]]
a328071_rows = map reverse $ recurse ([], Set.empty) where
  recurse kthDifferences = k : recurse ds where
    ds@(k,_) = nextTerm kthDifferences

a328071_list :: [Integer]
a328071_list = concat a328071_rows
