module Miscellaneous.A328863Spec (main, spec) where
import Test.Hspec
import Miscellaneous.A328863 (a328863)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A328863" $
  it "correctly computes the first 20 elements" $
    map a328863 [1..20] `shouldBe` expectedValue where
      expectedValue = [1,2,4,6,9,14,19,27,37,50,66,89,115,151,195,252,321,412,520,660]
