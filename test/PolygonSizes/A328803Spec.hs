module PolygonSizes.A328803Spec (main, spec) where
import Test.Hspec
import PolygonSizes.A328803 (a328803)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A328803" $
  it "correctly computes the first 20 elements" $
    map a328803 [1..20] `shouldBe` expectedValue where
      expectedValue = [0,1,2,2,3,4,3,4,5,4,5,6,6,5,6,7,8,8,6,7]
