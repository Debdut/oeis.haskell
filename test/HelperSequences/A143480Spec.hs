module HelperSequences.A143480Spec (main, spec) where
import Test.Hspec
import HelperSequences.A143480 (a143480)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A143480" $
  it "correctly computes the first 20 elements" $
    take 20 (map a143480 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,4,9,16,25,72,49,104,81,160,121,348,143,322,285,352,221,648,323,800]
