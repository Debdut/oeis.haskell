module Braxton.A282193Spec (main, spec) where
import Test.Hspec
import Braxton.A282193 (a282193)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A282193" $
  it "correctly computes the first 5 elements" $
    take 5 (map a282193 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,1,2,4,6]
