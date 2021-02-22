module HelperSequences.A001057Spec (main, spec) where
import Test.Hspec
import HelperSequences.A001057 (a001057)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A001057" $
  it "correctly computes the first 20 elements" $
    take 20 (map a001057 [0..]) `shouldBe` expectedValue where
      expectedValue = [0,1,-1,2,-2,3,-3,4,-4,5,-5,6,-6,7,-7,8,-8,9,-9,10]
