module External.A008288Spec (main, spec) where
import Test.Hspec
import External.A008288 (a008288)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A008288" $
  it "correctly computes the first 20 elements" $
    map a008288 [0..19] `shouldBe` expectedValue where
      expectedValue = [1, 1, 1, 1, 3, 1, 1, 5, 5, 1, 1, 7, 13, 7, 1, 1, 9, 25, 25, 9]
