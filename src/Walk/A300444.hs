module Walk.A300444 (a300444, a300444_list) where
import Data.Ratio
import Data.Set (Set)
import qualified Data.Set as Set
import Data.List (findIndices)
-- The path-avoiding snail.

type Q = Ratio Int
type Path = [Step]
data Step = VerticalStep Q (Q, Q) | HorizontalStep Q (Q, Q)

instance Eq Step where
  (HorizontalStep _ (x1, x2)) == (HorizontalStep _ (x3, x4)) = abs (x1 - x2) == abs (x3 - x4)
  (VerticalStep _ (y1, y2)) == (VerticalStep _ (y3, y4)) = abs (y1 - y2) == abs (y3 - y4)

instance Ord Step where
  (HorizontalStep _ (x1, x2)) `compare` (HorizontalStep _ (x3, x4)) = abs (x1 - x2) `compare` abs (x3 - x4)
  (VerticalStep _ (y1, y2)) `compare` (VerticalStep _ (y3, y4)) = abs (y1 - y2) `compare` abs (y3 - y4)

a300444 :: Int -> Int
a300444 n = a300444_list !! (n - 1)

a300444_list :: [Int]
a300444_list = map firstStepWith [1,3..] where
  numeratorsByStep = map distinctStepSizes allPaths
  firstStepWith i = head $ findIndices (Set.member i) numeratorsByStep

--------------------------------------------------------------------------------

-- p :: Q -> String
-- p q
--   | denominator q == 1 = show $ numerator q
--   | otherwise          = show (numerator q) ++ "/" ++ show (denominator q)

-- tikzPicture :: Path -> String
-- tikzPicture path = unlines $ "\\begin{tikzpicture}[scale=6]" : map (\s -> "  " ++ show s) (reverse path) ++ ["\\end{tikzpicture}"]

-- frac :: Q -> String
-- frac q = "\\frac{" ++ show (abs $ numerator q) ++ "}{" ++ show (denominator q) ++ "}"

nextSteps :: Path -> (Step, Step, Step)
nextSteps steps@(VerticalStep x (y1, y2) : _) = (stepRight, stepLeft, stepForward) where
  stepRight = minimum $ map (truncateStep (HorizontalStep y2 (x, x + 1))) steps
  stepLeft = minimum $ map (truncateStep (HorizontalStep y2 (x, x - 1))) steps
  stepForward = minimum $ map (truncateStep (VerticalStep x (y2, y3))) steps where
    y3 = if y1 < y2 then y2 + 1 else y2 - 1
nextSteps steps@(HorizontalStep y (x1, x2) : _) = (stepUp, stepDown, stepForward) where
  stepUp = minimum $ map (truncateStep (VerticalStep x2 (y, y + 1))) steps
  stepDown = minimum $ map (truncateStep (VerticalStep x2 (y, y - 1))) steps
  stepForward = minimum $ map (truncateStep (HorizontalStep y (x2, x3))) steps where
    x3 = if x1 < x2 then x2 + 1 else x2 - 1

nextPaths :: [Path] -> [Path]
nextPaths = concatMap (\path -> pathArray path $ nextSteps path) where
  pathArray path (step1, step2, step3) = [step1 : path, step2 : path, step3 : path]

linesCross :: (Q, (Q, Q)) -> (Q, (Q, Q)) -> Bool
linesCross (x, (y1, y2)) (y, (x1, x2)) = between (x1, x2) x && between (y1, y2) y

between :: (Q, Q) -> Q -> Bool
between (a, b) x = min a b <= x && x <= max a b

distanceNumerator :: Step -> Int
distanceNumerator (HorizontalStep _ (x1, x2)) = abs $ numerator (x1 - x2)
distanceNumerator (VerticalStep _ (y1, y2)) = abs $ numerator (y1 - y2)

truncateStep :: Step -> Step -> Step
truncateStep h@(HorizontalStep b (a1, a2)) (HorizontalStep y (x1, x2))
  | b == y && between (x1, x2) a2 = HorizontalStep b (a1, (x1 + a1)/2)
  | otherwise                     = h
truncateStep h@(HorizontalStep b (a1, a2)) (VerticalStep x (y1, y2))
  | (a1, b) == (x, y2)                     = h
  | linesCross (b, (a1, a2)) (x, (y1, y2)) = HorizontalStep b (a1, (a1 + x)/2)
  | otherwise                              = h
truncateStep v@(VerticalStep a (b1, b2)) (HorizontalStep y (x1, x2))
  | (a, b1) == (x2, y)                     = v
  | linesCross (a, (b1, b2)) (y, (x1, x2)) = VerticalStep a (b1, (b1 + y)/2)
  | otherwise                              = v
truncateStep v@(VerticalStep a (b1, b2)) (VerticalStep x (y1, y2))
  | a == x && between (y1, y2) b2 = VerticalStep a (b1, (y1 + b1)/2)
  | otherwise                     = v

-- This should be a tree implementation
allPaths :: [[Path]]
allPaths = [[]] : recurse [[HorizontalStep 0 (0, 1)]] where
  recurse paths = paths : recurse (nextPaths paths)

distinctStepSizes :: [Path] -> Set Int
distinctStepSizes = foldr (Set.union . distanceNumerators) Set.empty where
  distanceNumerators path = Set.fromList $ map distanceNumerator path
