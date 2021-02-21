module PolygonSizes.A328801Spec (main, spec) where
import Test.Hspec
import PolygonSizes.A328801 (a328801)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A328801" $
  it "correctly computes up to a(20)" $
    map a328801 [2..20] `shouldBe` expectedValue where
      expectedValue = [2,3,3,4,5,4,5,6,5,6,7,7,6,7,8,9,9,7,8]
