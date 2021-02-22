module HelperSequences.A026791 (a026791, a026791_row) where

a026791 :: Int -> Int
a026791 n = a026791_list !! (n - 1)

a026791_list :: [Int]
a026791_list = concat a026791_rows

a026791_row :: Int -> [Int]
a026791_row n = a026791_rows !! (n - 1)

a026791_rows :: [[Int]]
a026791_rows = concatMap a026791_level [1..]

a026791_level :: Int -> [[Int]]
a026791_level 0 = [[]]
a026791_level n = concatMap f [1..n] where
  f k = map (k:) $ filter (all (>=k)) $ a026791_level (n - k)
