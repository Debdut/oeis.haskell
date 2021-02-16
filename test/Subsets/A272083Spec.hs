module Subsets.A272083Spec (main, spec) where
import Test.Hspec
import Subsets.A272083 (a272083)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A272083" $
  it "correctly computes the first 20 elements" $
    take 20 (map a272083 [0..]) `shouldBe` expectedValue where
      expectedValue = [1,6,3,2,12,6,4,2,15,10,3,2,15,12,10,4,2,15,12,10]
