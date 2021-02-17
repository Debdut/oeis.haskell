module Braxton.A284435Spec (main, spec) where
import Test.Hspec
import Braxton.A284435 (a284435)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A284435" $
  it "correctly computes the first 5 elements" $
    take 5 (map a284435 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,1,2,2,4]
