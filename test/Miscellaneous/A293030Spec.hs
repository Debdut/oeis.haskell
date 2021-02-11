module Miscellaneous.A293030Spec (main, spec) where
import Test.Hspec
import Miscellaneous.A293030 (a293030)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A293030" $
  it "correctly computes the first 20 elements" $
    take 20 (map a293030 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,3,4,6,8,5,7,9,22,10,12,17,23,24,11,15,18,25,27]
