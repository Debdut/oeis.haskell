module Braxton.A284432Spec (main, spec) where
import Test.Hspec
import Braxton.A284432 (a284432)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A284432" $
  it "correctly computes the first 5 elements" $
    take 5 (map a284432 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,1,2,2,4]
