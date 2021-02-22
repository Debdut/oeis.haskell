module Chess.A278211 where
import Helpers.Chess (maximumNumberOfMoves, Move)

a278211 :: Int -> Int
a278211 = maximumNumberOfMoves moveSet

moveSet :: [(Move, Move)]
moveSet = [((+), z), ((-), z), (z, (+)), (z, (-))] where
  z x _ = x
