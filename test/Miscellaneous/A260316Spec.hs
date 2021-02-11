module Miscellaneous.A260316Spec (main, spec) where
import Test.Hspec
import Miscellaneous.A260316 (a260316)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A260316" $
  it "correctly computes the first 20 elements" $
    take 20 (map a260316 [0..]) `shouldBe` expectedValue where
      expectedValue = [0,0,1,1,3,4,2,6,7,3,9,10,4,12,13,5,15,16,6,18]
