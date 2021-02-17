module Braxton.A284434Spec (main, spec) where
import Test.Hspec
import Braxton.A284434 (a284434)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A284434" $
  it "correctly computes the first 5 elements" $
    take 5 (map a284434 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,1,6,2]
