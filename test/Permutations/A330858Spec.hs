module Permutations.A330858Spec (main, spec) where
import Test.Hspec
import Permutations.A330858 (a330858)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A330858" $
  it "correctly computes the first twenty elements" $
    map a330858 [1..20] `shouldBe` expectedValue where
      expectedValue = [1,1,2,1,4,6,1,10,18,24,1,26,66,96,120,1,76,276,456,600]
