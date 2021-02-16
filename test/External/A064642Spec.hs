module External.A064642Spec (main, spec) where
import Test.Hspec
import External.A064642 (a064642)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A064642" $
  it "correctly computes the first 20 elements" $
    map a064642 [0..19] `shouldBe` expectedValue where
      expectedValue = [1, 1, 2, 1, 5, 7, 1, 8, 22, 29, 1, 11, 46, 104, 133, 1, 14, 79, 251, 517]
