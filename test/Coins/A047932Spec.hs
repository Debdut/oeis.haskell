module Coins.A047932Spec (main, spec) where
import Test.Hspec
import Coins.A047932 (a047932)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A047932" $
  it "correctly computes the first 20 elements" $
      map a047932 [1, 6..41] `shouldBe` expectedValue where
        expectedValue = [0,9,21,34,47,60,73,87,100]
