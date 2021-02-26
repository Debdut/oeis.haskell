module Delahaye.A338013Spec (main, spec) where
import Test.Hspec
import Delahaye.A338013 (a338013)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A338013" $
  it "correctly computes the first 20 elements" $
    take 20 (map a338013 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,5,11,15,17,19,24,25,29,31,32,35,39,42,43,45,47,48,49]
