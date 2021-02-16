module Subsets.A272020Spec (main, spec) where
import Test.Hspec
import Subsets.A272020 (a272020)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A272020" $
  it "correctly computes the first 20 elements" $
    take 20 (map a272020 [0..]) `shouldBe` expectedValue where
      expectedValue = [1,2,2,1,3,3,1,3,2,3,2,1,4,4,1,4,2,4,2,1]
