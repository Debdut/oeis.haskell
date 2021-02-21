module PolygonSizes.A328793Spec (main, spec) where
import Test.Hspec
import PolygonSizes.A328793 (a328793)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A328793" $
  it "correctly computes the first 20 elements" $
    map a328793 [2..20] `shouldBe` expectedValue where
      expectedValue = [2,4,3,5,4,7,6,5,8,7,6,10,9,8,7,11,10,9,13]
