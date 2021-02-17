module Braxton.A282170Spec (main, spec) where
import Test.Hspec
import Braxton.A282170 (a282170)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A282170" $
  it "correctly computes the first 5 elements" $
    take 5 (map a282170 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,6,6,24]
