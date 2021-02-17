module Braxton.A284436Spec (main, spec) where
import Test.Hspec
import Braxton.A284436 (a284436)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A284436" $
  it "correctly computes the first 5 elements" $
    take 5 (map a284436 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,6,2,18]
