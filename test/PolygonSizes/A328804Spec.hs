module PolygonSizes.A328804Spec (main, spec) where
import Test.Hspec
import PolygonSizes.A328804 (a328804)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A328804" $
  it "correctly computes the first 20 elements" $
    map a328804 [1..20] `shouldBe` expectedValue where
      expectedValue = [0,1,2,2,3,4,3,4,5,4,5,6,6,7,6,7,8,8,6,7]
