module Binary.A324608 (a324608, a324608_list) where
import Binary.A308092 (a308092, a308092_list)
import Helpers.Binary (bitsList)

a324608_list :: [Int]
a324608_list = map (length . filter id . bitsList) a308092_list

a324608 :: Int -> Int
a324608 n = a324608_list !! (n - 1)
