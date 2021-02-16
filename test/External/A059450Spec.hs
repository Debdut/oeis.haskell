module External.A059450Spec (main, spec) where
import Test.Hspec
import External.A059450 (a059450)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A059450" $
  it "correctly computes the first 20 elements" $
    map a059450 [0..19] `shouldBe` expectedValue where
      expectedValue = [1, 1, 1, 2, 3, 5, 4, 8, 17, 29, 8, 20, 50, 107, 185, 16, 48, 136, 336, 721]
