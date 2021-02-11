module Miscellaneous.A273156Spec (main, spec) where
import Test.Hspec
import Miscellaneous.A273156 (a273156)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A273156" $
  it "correctly computes the first 20 elements" $
    take 20 (map a273156 [0..]) `shouldBe` expectedValue where
      expectedValue = [0,1,2,3,3,5,5,10,8,8,16,24,24,13,13,26,39,39,65,65]
