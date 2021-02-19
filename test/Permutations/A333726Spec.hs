module Permutations.A333726Spec (main, spec) where
import Test.Hspec
import Permutations.A333726 (a333726)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A333726" $
  it "correctly computes the first twenty elements" $
    map a333726 [1..20] `shouldBe` expectedValue where
      expectedValue = [1,2,1,6,2,2,24,9,6,6,120,44,24,24,24,720,265,160,120,120]
