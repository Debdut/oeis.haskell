module Graham.A233421 (a233421) where
import Graham.A006255 (a006255)
import HelperSequences.A000037 (a000037)

a233421 :: Integer -> Integer
a233421 = a006255 . a000037
