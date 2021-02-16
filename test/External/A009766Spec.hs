module External.A009766Spec (main, spec) where
import Test.Hspec
import External.A009766 (a009766)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A009766" $
  it "correctly computes the first 20 elements" $
    map a009766 [0..19] `shouldBe` expectedValue where
      expectedValue = [1, 1, 1, 1, 2, 2, 1, 3, 5, 5, 1, 4, 9, 14, 14, 1, 5, 14, 28, 42]
