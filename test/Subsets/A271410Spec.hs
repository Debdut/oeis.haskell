module Subsets.A271410Spec (main, spec) where
import Test.Hspec
import Subsets.A271410 (a271410)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A271410" $
  it "correctly computes the first 20 elements" $
    take 20 (map a271410 [0..]) `shouldBe` expectedValue where
      expectedValue = [1,1,2,2,3,3,6,6,4,4,4,4,12,12,12,12,5,5,10,10]
