module Walk.A306779 (a306779) where
import Data.Set (size)
import Helpers.Table (triangleByRows)
import Helpers.NorthEastWalks (maximalTorusWalks, CurrentState (Completed))

-- Stupid implementation
a306779 :: Int -> Int
a306779 n = case triangleByRows (n - 1) of (a, b) -> 1 + head (map stepCount $ maximalTorusWalks (a + 1)  (b + 1))

stepCount :: CurrentState -> Int
stepCount (Completed steps) = size steps
stepCount _ = error "Invalid State!"
