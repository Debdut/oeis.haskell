module Binary.A324608Spec (main, spec) where
import Test.Hspec
import Binary.A324608 (a324608)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A324608" $
  it "correctly computes the first 20 elements" $
      map a324608 [1..20] `shouldBe` expectedValue where
        expectedValue = [1, 1, 2, 3, 3, 3, 3, 3, 3, 3, 3, 10, 11, 11, 11, 13, 13, 14, 14, 14]
