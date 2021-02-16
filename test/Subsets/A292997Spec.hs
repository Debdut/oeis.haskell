module Subsets.A292997Spec (main, spec) where
import Test.Hspec
import Subsets.A292997 (a292997)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A292997" $
  it "correctly computes the first 20 elements" $
    map a292997 [1..20] `shouldBe` expectedValue where
      expectedValue = [1,1,2,1,2,1,3,1,2,3,1,2,4,1,2,5,1,2,6,1]
