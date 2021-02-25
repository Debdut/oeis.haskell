module RemainderGame.A268058 (a268058) where
import Helpers.RemainderGame (shrinkingDivisorIterations)

a268058 :: Int -> Integer
a268058 n = maximum $ map (shrinkingDivisorIterations n) [1..n]
