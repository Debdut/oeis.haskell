module External.A143481Spec (main, spec) where
import Test.Hspec
import External.A143481 (a143481)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A143481" $
  it "correctly computes the first 20 elements" $
    take 20 (map a143481 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,6,8,20,24,42,48,54,64,110,112,120,132,144,160,192,216,288,320]
