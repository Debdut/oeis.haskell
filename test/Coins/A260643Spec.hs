module Coins.A260643Spec (main, spec) where
import Test.Hspec
import Coins.A260643 (a260643)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A260643" $
  it "correctly computes the first 20 elements" $
    take 20 (map a260643 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,3,4,2,5,3,6,7,1,8,7,4,8,5,6,4,9,7,10]
