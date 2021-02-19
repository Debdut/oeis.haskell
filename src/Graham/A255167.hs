module Graham.A255167 (a255167) where
import Graham.A006255 (a006255)
import PowerDivisibility.A072905 (a072905)

a255167 :: Integer -> Integer
a255167 n = a072905 n - a006255 n
