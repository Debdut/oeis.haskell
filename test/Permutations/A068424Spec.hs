module Permutations.A068424Spec (main, spec) where
import Test.Hspec
import Permutations.A068424 (a068424)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A068424" $
  it "correctly computes the first twenty elements" $
    map a068424 [1..20] `shouldBe` expectedValue where
      expectedValue = [1,2,2,3,6,6,4,12,24,24,5,20,60,120,120,6,30,120,360,720]
