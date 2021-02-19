module Graham.A006255 (a006255, a006255_list, a999999_list) where
import Helpers.GrahamLinearAlgebra (rrefMatrix)
import Data.Matrix (toLists)
import Data.List (elemIndex, genericIndex)
import Data.Maybe (fromJust)

-- A006255 1 = 1  via [1]
-- A006255 2 = 6  via [2, 3, 6]
-- A006255 3 = 8  via [3, 6, 8]
-- A006255 4 = 4  via [4]
-- A006255 5 = 10 via [5, 8, 10]
-- A006255 6 = 12 via [6, 8, 12]

a006255 :: Integer -> Integer
a006255 n = genericIndex a006255_list (n - 1)

a006255_list :: [Integer]
a006255_list = map (last . a999999_row) [1..]

a999999_row :: Integer -> [Integer]
a999999_row n = (n :) $ map (adjusted . columnIndex) relevantRows where
  adjusted = (1 + n +)
  relevantRows = filter last $ toLists $ rrefMatrix n
  columnIndex = fromIntegral . fromJust . elemIndex True

a999999_list :: [Integer]
a999999_list = concatMap a999999_row [1..]
