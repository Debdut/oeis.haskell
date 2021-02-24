module Walk.A324604Spec (main, spec) where
import Test.Hspec
import Walk.A324604 (a324604)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A324604" $
  it "correctly computes the first 10 elements" $
    take 10 (map a324604 [1..]) `shouldBe` expectedValue where
      expectedValue = [2,2,4,2,7,22,2,13,66,258]
