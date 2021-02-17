module Braxton.A284431Spec (main, spec) where
import Test.Hspec
import Braxton.A284431 (a284431)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A284431" $
  it "correctly computes the first 5 elements" $
    take 5 (map a284431 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,1,6,2]
