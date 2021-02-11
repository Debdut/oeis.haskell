module Staircase.A282443Spec (main, spec) where
import Test.Hspec
import Staircase.A282443 (a282443)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A282443" $
  it "correctly computes the first 20 elements" $
    take 20 (map a282443 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,2,3,5,4,4,8,8,7,9,10,10,14,14,10,11,17,18,15]
