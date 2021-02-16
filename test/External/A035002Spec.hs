module External.A035002Spec (main, spec) where
import Test.Hspec
import External.A035002 (a035002)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A035002" $
  it "correctly computes the first 20 elements" $
    map a035002 [1..20] `shouldBe` expectedValue where
      expectedValue = [1, 1, 1, 2, 2, 2, 4, 5, 5, 4, 8, 12, 14, 12, 8, 16, 28, 37, 37, 28]
