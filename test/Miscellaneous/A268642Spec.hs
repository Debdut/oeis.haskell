module Miscellaneous.A268642Spec (main, spec) where
import Test.Hspec
import Miscellaneous.A268642 (a268642)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A268642" $
  it "correctly computes the first 20 elements" $
    take 20 (map a268642 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,3,2,6,18,9,5,15,8,4,12,36,108,54,27,14,7,21,11,33]
