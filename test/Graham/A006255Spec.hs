module Graham.A006255Spec (main, spec) where
import Test.Hspec
import Graham.A006255 (a006255)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A006255" $
  it "correctly computes the first 20 elements" $
    take 20 (map a006255 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,6,8,4,10,12,14,15,9,18,22,20,26,21,24,16,34,27,38,30]
