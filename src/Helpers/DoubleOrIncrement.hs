module Helpers.DoubleOrIncrement (numberOfGenerations, minimumMatch) where
-- The idea is to start with a pair (a, b), and count how many maps of
-- (x, y) |-> (x + 1, 2y) or
-- (x, y) |-> (2x, y + 1)
-- are necessary to make the values equal

-- Naive implementation
numberOfGenerations :: (Integer, Integer) -> Int
numberOfGenerations = doubleAndIncrement generationCounter where
  generationCounter count _ = count

-- Naive implementation
minimumMatch :: (Integer, Integer) -> Integer
minimumMatch = doubleAndIncrement minimumPair where
  minimumPair _ allPairs = minimum $ map fst $ filter (uncurry (==)) allPairs

-- Naive implementation
numberOfMinimalPaths :: (Integer, Integer) -> Int
numberOfMinimalPaths = doubleAndIncrement countMinimalPaths where
  countMinimalPaths _ allPairs = length $ filter (uncurry (==)) allPairs

doubleAndIncrement :: (Eq a, Num t, Num a) => (t -> [(a, a)] -> p) -> (a, a) -> p
doubleAndIncrement f (a, b) = recurse 0 [(a, b)] where
  recurse counter allPairs
    | any (uncurry (==)) allPairs = f counter allPairs
    | otherwise                   = recurse (counter + 1) (nextGeneration allPairs) where
      nextGeneration = concatMap (\(a, b) -> [(a + 1, 2*b), (2*a, b + 1)])

-- f :: Ord a => p -> [(a, a)] -> a
-- f counter allPairs = maximum $ map fst $ filter (uncurry (==)) allPairs

-- g :: Ord a => p -> [(a, a)] -> a
-- g counter allPairs = counter

-- Pairs with multiple minimal paths:
-- (8,0) -> (9,0) -> (10,0) -> (11,0) -> (22,1) -> (23,2) -> (46,3)  -> (47,6)  -> (48,12) -> (49,24) -> (98,25)  -> (99,50)  -> (100,100)
-- (8,0) -> (9,0) -> (18,1) -> (19,2) -> (20,4) -> (40,5) -> (41,10) -> (42,20) -> (84,21) -> (85,42) -> (170,43) -> (171,86) -> (172,172)
--------------------------------------------------------------------------------
-- Table of others (a, b) with a > b, the number of minimal paths, and the resulting values.
-- (8,0)   -> 2 => [100,172]

-- (9,0)   -> 2 => [100,172]

-- (12,0)  -> 2 => [228,400]

-- (16,0)  -> 2 => [80,144]

-- (17,0)  -> 2 => [80,144]
-- (17,11) -> 2 => [8740,8748]

-- (19,13) -> 2 => [9764,9772]

-- (20,14) -> 2 => [10276,10284]

-- (21,14) -> 2 => [14380,14372]
-- (21,15) -> 2 => [10788,10796]

-- (22,15) -> 3 => [90244,90252,90316]
-- (22,16) -> 2 => [11300,11308]

-- (23,15) -> 2 => [15404,15396]
-- (23,16) -> 3 => [94340,94348,94412]
-- (23,17) -> 2 => [11812,11820]

-- (24,18) -> 2 => [12324,12332]

-- (25,16) -> 2 => [16428,16420]
-- (25,18) -> 3 => [102532,102540,102604]
-- (25,19) -> 2 => [12836,12844]

-- (26,8)  -> 2 => [6692,6700]
-- (26,19) -> 3 => [106628,106636,106700]
-- (26,20) -> 2 => [13348,13356]

-- (27,17) -> 2 => [17452,17444]
-- (27,20) -> 3 => [110724,110732,110796]
-- (27,21) -> 2 => [13860,13868]

-- (28,9)  -> 2 => [7204,7212]
-- (28,21) -> 3 => [114820,114828,114892]
-- (28,22) -> 2 => [14372,14380]

-- (29,18) -> 2 => [18476,18468]
-- (29,22) -> 3 => [118916,118924,118988]
-- (29,23) -> 2 => [14884,14892]

-- (30,10) -> 2 => [7716,7724]
-- (30,19) -> 3 => [155852,155788,155780]
-- (30,23) -> 3 => [123012,123020,123084]
-- (30,24) -> 2 => [15396,15404]

-- (31,10) -> 2 => [31844,31876]
-- (31,19) -> 2 => [19500,19492]
-- (31,24) -> 3 => [127108,127116,127180]
-- (31,25) -> 2 => [15908,15916]

-- (32,0)  -> 3 => [292,548,556]
-- (32,10) -> 2 => [20524,20516]
-- (32,11) -> 2 => [8228,8236]
-- (32,20) -> 3 => [164044,163980,163972]
-- (32,25) -> 3 => [131204,131212,131276]
-- (32,26) -> 2 => [16420,16428]

-- (33,0)  -> 2 => [292,548]
-- (33,11) -> 2 => [33892,33924]
-- (33,20) -> 2 => [20524,20516]
-- (33,26) -> 3 => [135300,135308,135372]
-- (33,27) -> 2 => [16932,16940]
