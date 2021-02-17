module Braxton.A283557Spec (main, spec) where
import Test.Hspec
import Braxton.A283557 (a283557)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A283557" $
  it "correctly computes the first 5 elements" $
    take 5 (map a283557 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,1,3,2,2]
