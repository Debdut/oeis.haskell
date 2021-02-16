module External.A274923Spec (main, spec) where
import Test.Hspec
import External.A274923 (a274923)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A274923" $
  it "correctly computes the first 20 elements" $
    take 20 (map a274923 [1..]) `shouldBe` expectedValue where
      expectedValue = [0, 0, 1, 1, 1, 0, -1, -1, -1, -1, 0, 1, 2, 2, 2, 2, 2, 1, 0, -1]
