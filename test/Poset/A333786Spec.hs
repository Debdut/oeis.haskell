module Poset.A333786Spec (main, spec) where
import Test.Hspec
import Poset.A333786 (a333786)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A333786" $
  it "correctly computes the first 20 elements" $
    map a333786 [1..20] `shouldBe` expectedValue where
      expectedValue = [1,2,3,5,6,7,11,13,14,15,23,21,29,30,31,47,33,35,61,62]
