module Braxton.A282168Spec (main, spec) where
import Test.Hspec
import Braxton.A282168 (a282168)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A282168" $
  it "correctly computes the first 5 elements" $
    take 5 (map a282168 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,4,6,8]
