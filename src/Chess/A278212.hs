module Chess.A278212 where
import Helpers.Chess (maximumNumberOfMoves, Move)

a278212 :: Int -> Int
a278212 = maximumNumberOfMoves moveSet

moveSet :: [(Move, Move)]
moveSet = [((-), (-)), ((-), (+)), ((+), (-)), ((+), (+))]
