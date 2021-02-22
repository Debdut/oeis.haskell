module Poset.A334111Spec (main, spec) where
import Test.Hspec
import Poset.A334111 (a334111)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A334111" $
  it "correctly computes the first 20 elements" $
    map a334111 [0..19] `shouldBe` expectedValue where
      expectedValue = [1,2,3,4,5,6,8,7,9,10,12,16,11,13,14,15,17,18,20,24]
