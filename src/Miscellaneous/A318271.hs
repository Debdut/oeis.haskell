module Miscellaneous.A318271 (a318271) where
import Data.List (delete)
import HelperSequences.A026791 (a026791_row)
import Helpers.Subsets (eachPair)

type Position = ([Int], [Int])
type ElapsedTime = Int
data State = LeftFlash Position ElapsedTime | RightFlash Position ElapsedTime deriving Show

a318271 :: Int -> Int
a318271 = minimumTime . a026791_row

-- A brute force approach.
-- It would be better if [1,1,1,1,...,1] didn't have so many redundant calculations.
minimumTime :: [Int] -> Int
minimumTime [] = 0
minimumTime [t] = t
minimumTime speeds = minimumTimeFromState $ LeftFlash (speeds, []) 0

minimumTimeFromState :: State -> Int
minimumTimeFromState (RightFlash ([], _) elapsedTime) = elapsedTime
minimumTimeFromState state = minimum $ map minimumTimeFromState $ children state

children :: State -> [State]
children (RightFlash ([], _) _) = error "Nobody should cross!"
children (LeftFlash ([], _) _) = error "Who is holding the flashlight?"
children l@(LeftFlash (left, right) elapsed) = map (uncurry (crossLeft l)) $ eachPair left
children r@(RightFlash (left, right) elapsed) = map (crossRight r) right

crossLeft :: State -> Int -> Int -> State
crossLeft (LeftFlash (left, right) elapsed) personA personB = RightFlash position newElapsed where
  newElapsed = elapsed + (personA `max` personB)
  position = (newLeft, newRight) where
    newLeft = delete personA $ delete personB left
    newRight = personA : personB : right

crossRight :: State -> Int -> State
crossRight (RightFlash (left, right) elapsed) person = LeftFlash position newElapsed where
  newElapsed = elapsed + person
  position = (newLeft, newRight) where
    newLeft = person : left
    newRight = delete person right
