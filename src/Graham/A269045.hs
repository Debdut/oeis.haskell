module Graham.A269045 (a269045, a269045_list) where
import Graham.A006255 (a006255)
import HelperSequences.A070229 (a070229)

a269045 n = a269045_list !! (n - 1)

a269045_list = filter (\k -> a006255 k /= a070229 k) [1..]
