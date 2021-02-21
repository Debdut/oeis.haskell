module PolygonSizes.A328787Spec (main, spec) where
import Test.Hspec
import PolygonSizes.A328787 (a328787)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A328787" $
  it "correctly computes the first 20 elements" $
    map a328787 [2..20] `shouldBe` expectedValue where
      expectedValue = [1,2,4,6,8,11,14,17,21,25,28,33,38,43,49,54,59,66,73]
