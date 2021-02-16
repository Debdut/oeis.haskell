module External.A137734Spec (main, spec) where
import Test.Hspec
import External.A137734 (a137734)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A137734" $
  it "correctly computes the first 20 elements" $
    take 20 (map a137734 [0..]) `shouldBe` expectedValue where
      expectedValue = [1,1,2,2,2,3,2,3,3,3,4,3,3,4,4,4,4,5,4,4]
