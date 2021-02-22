module Coins.A265414Spec (main, spec) where
import Test.Hspec
import Coins.A265414 (a265414)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A265414" $
  it "correctly computes the first 20 elements" $
    take 20 (map a265414 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,3,4,6,8,9,11,18,20,24,26,30,33,38,42,44,56,58,64]
