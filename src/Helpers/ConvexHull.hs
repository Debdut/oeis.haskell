module Helpers.ConvexHull (findNextSequence, increment, convexHull) where
import Data.List (sort)


-- Finds the lexicographically earliest sequence after (or including) the
-- startingPoint with length n and the largest term less than or equal to the
-- upperBound
findNextSequence :: Int -> Int -> [Int] -> [Int]
findNextSequence upperBound n startingPoint = reverse $ recurse startingPoint where
  recurse [] = []
  recurse attempt
    | sequenceFormsAnNGon attempt = appendOrReturn
    | otherwise                   = recurse $ increment upperBound attempt where
    appendOrReturn
      | length attempt == n = attempt
      | otherwise           = recurse (1 : attempt)

increment :: Int -> [Int] -> [Int]
increment _ [] = []
increment upperBound (y:ys)
  | y >= upperBound = increment upperBound ys
  | otherwise       = (y + 1) : ys


-- Checks if (1, ys !! 0), ..., (n, ys !! n - 1) forms an n-gon.
sequenceFormsAnNGon :: [R] -> Bool
sequenceFormsAnNGon ys = eachPointIsCornerOfConvexHull $ zip [1..] ys

eachPointIsCornerOfConvexHull :: [R2] -> Bool
eachPointIsCornerOfConvexHull points = sort (convexHull points) == sort points

-- https://en.wikibooks.org/wiki/Algorithm_Implementation/Geometry/Convex_hull/Monotone_chain#Haskell
-- Coordinate type
type R = Int

-- Vector / point type
type R2 = (R, R)

-- Checks if it's shortest to rotate from the OA to the OB vector in a clockwise
-- direction.
clockwise :: R2 -> R2 -> R2 -> Bool
clockwise o a b = (a `sub` o) `cross` (b `sub` o) <= 0

-- 2D cross product.
cross :: R2 -> R2 -> R
cross (x1, y1) (x2, y2) = x1 * y2 - x2 * y1

-- Subtract two vectors.
sub :: R2 -> R2 -> R2
sub (x1, y1) (x2, y2) = (x1 - x2, y1 - y2)

-- Implements the monotone chain algorithm
convexHull :: [R2] -> [R2]
convexHull [] = []
convexHull [p] = [p]
convexHull points = lower ++ upper
  where
    sorted = sort points
    lower = chain sorted
    upper = chain (reverse sorted)

chain :: [R2] -> [R2]
chain = go []
  where
    -- The first parameter accumulates a monotone chain where the most recently
    -- added element is at the front of the list.
    go :: [R2] -> [R2] -> [R2]
    go acc@(r1:r2:rs) (x:xs) =
      if clockwise r2 r1 x
        -- Made a clockwise turn - remove the most recent part of the chain.
        then go (r2:rs) (x:xs)
        -- Made a counter-clockwise turn - append to the chain.
        else go (x:acc) xs
    -- If there's only one point in the chain, just add the next visited point.
    go acc (x:xs) = go (x:acc) xs
    -- No more points to consume - finished!  Note: the reverse here causes the
    -- result to be consistent with the other examples (a ccw hull), but
    -- removing that and using (upper ++ lower) above will make it cw.
    go acc [] = reverse $ tail acc
