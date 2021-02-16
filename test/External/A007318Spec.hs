module External.A007318Spec (main, spec) where
import Test.Hspec
import External.A007318 (a007318)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A007318" $
  it "correctly computes the first 20 elements" $
    map a007318 [0..19] `shouldBe` expectedValue where
      expectedValue = [1, 1, 1, 1, 2, 1, 1, 3, 3, 1, 1, 4, 6, 4, 1, 1, 5, 10, 10, 5]
