module Helpers.NorthEastWalks (maximalTorusWalks, allTorusWalks, CurrentState (Completed)) where
import Data.Set (Set)
import qualified Data.Set as Set

data CurrentState = Intersected | Completed (Set Position) | Ongoing State deriving (Show, Eq)
type Position = (Int, Int)
type State = (Position, Set Position)

maximalTorusWalks n m = recurse [] [Ongoing ((0, 0), Set.empty)] where
  recurse completedWalks [] = completedWalks
  recurse completedWalks ongoingStates = recurse completedWalks' ongoingStates' where
    nextStates = concatMap (\s -> [nextStatesRight n s, nextStatesUp m s]) ongoingStates
    ongoingStates' = filter isOngoing nextStates
    completedWalks' = if null cW then completedWalks else cW where
      cW = filter isCompleted nextStates

-- 2, 4, 22, 258, 3528, 87830
allTorusWalks n m = recurse [] [Ongoing ((0, 0), Set.empty)] where
  recurse completedWalks [] = completedWalks
  recurse completedWalks ongoingStates = recurse completedWalks' ongoingStates' where
    nextStates = concatMap (\s -> [nextStatesRight n s, nextStatesUp m s]) ongoingStates
    ongoingStates' = filter isOngoing nextStates
    completedWalks' = completedWalks ++ filter isCompleted nextStates

nextStatesRight :: Int -> CurrentState -> CurrentState
nextStatesRight width (Ongoing ((x, y), pastPositions))
  | newPosition == (0, 0) = Completed pastPositions
  | newPosition `elem` pastPositions = Intersected
  | otherwise = Ongoing (newPosition, Set.insert newPosition pastPositions) where
    newPosition = ((x + 1) `mod` width, y)

nextStatesUp :: Int -> CurrentState -> CurrentState
nextStatesUp height (Ongoing ((x, y), pastPositions))
  | newPosition == (0, 0) = Completed pastPositions
  | newPosition `elem` pastPositions = Intersected
  | otherwise = Ongoing (newPosition, Set.insert newPosition pastPositions) where
    newPosition = (x, (y + 1) `mod` height)

isCompleted :: CurrentState -> Bool
isCompleted (Completed _) = True
isCompleted _             = False

isOngoing :: CurrentState -> Bool
isOngoing (Ongoing _) = True
isOngoing _           = False

-- n x n torus
-- n x m torus
-- n x m torus size of maximal walk
-- n x m torus number of maximal walks
-- * n x n torus maximal
-- n x m torus maximal
-- n x n torus up > right
-- n x m torus up > right

-- n x n cylinder
-- n x m cylinder
-- n x n cylinder maximal
-- n x m cylinder maximal
-- n x n cylinder up > right
-- n x m cylinder up > right
