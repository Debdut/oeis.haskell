module Helpers.Chess (maximumNumberOfMoves, Move) where
import qualified Data.Set as Set
type Position = (Int, Int)
type Move = Int -> Int -> Int
type MoveSet = [(Move, Move)]
data Board = Board Int (Set.Set Position) deriving (Eq, Ord)
data PositionState = Occupied | Empty | OffBoard

maximumNumberOfMoves :: MoveSet -> Int -> Int
maximumNumberOfMoves moveSet n = maximum $ Set.map (moveCount moveSet) $ allBoards n

moveCount :: MoveSet -> Board -> Int
moveCount moveSet board@(Board _ positions) = foldr sumMoves 0 positions where
  sumMoves = (+) . numberOfMoves moveSet board

numberOfMoves :: MoveSet -> Board -> Position -> Int
numberOfMoves moves board (x, y) = sum $ map direction moves where
  direction (g, h) = countMoves $ map (positionState board . positions) [1..] where
    positions i = (g x i, h y i)

countMoves :: [PositionState] -> Int
countMoves = recurse 0 where
  recurse c [] = c
  recurse c (Empty:ps)   = recurse (c + 1) ps
  recurse c (Occupied:_) = c
  recurse c (OffBoard:_) = c

positionState :: Board -> Position -> PositionState
positionState (Board size positions) (x, y)
  | min x y < 1 || max x y > size = OffBoard
  | (x, y) `Set.member` positions = Occupied
  | otherwise                     = Empty

allBoards :: Int -> Set.Set Board
allBoards n = Set.map (Board n) allBoardStates where
  allBoardStates = Set.powerSet $ Set.fromList [(i,j) | i <- [1..n], j <- [1..n]]
