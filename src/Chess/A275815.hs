module Chess.A275815 where
import Helpers.Chess (maximumNumberOfMoves, Move)

a275815 :: Int -> Int
a275815 = maximumNumberOfMoves moveSet

moveSet :: [(Move, Move)]
moveSet = tail [(g, h) | g <- fs, h <- fs] where
  fs = [const, (+), (-)]
