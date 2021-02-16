module External.A071945Spec (main, spec) where
import Test.Hspec
import External.A071945 (a071945)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A071945" $
  it "correctly computes the first 20 elements" $
    map a071945 [0..19] `shouldBe` expectedValue where
      expectedValue = [1, 1, 1, 1, 3, 3, 1, 5, 9, 9, 1, 7, 19, 31, 31, 1, 9, 33, 73, 113]
