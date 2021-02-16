module Subsets.A272011Spec (main, spec) where
import Test.Hspec
import Subsets.A272011 (a272011)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A272011" $
  it "correctly computes the first 20 elements" $
    take 20 (map a272011 [0..]) `shouldBe` expectedValue where
      expectedValue = [0,1,1,0,2,2,0,2,1,2,1,0,3,3,0,3,1,3,1,0]
