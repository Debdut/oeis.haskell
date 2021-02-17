module Braxton.A283558Spec (main, spec) where
import Test.Hspec
import Braxton.A283558 (a283558)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A283558" $
  it "correctly computes the first 5 elements" $
    take 5 (map a283558 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,1,3,2,2]
