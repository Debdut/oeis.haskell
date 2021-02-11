module Miscellaneous.A280521Spec (main, spec) where
import Test.Hspec
import Miscellaneous.A280521 (a280521)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A280521" $
  it "correctly computes the first 20 elements" $
    take 20 (map a280521 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,1,2,1,2,2,1,2,2,3,2,1,2,2,3,2,3,3,2,1]
