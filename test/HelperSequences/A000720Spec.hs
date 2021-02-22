module HelperSequences.A000720Spec (main, spec) where
import Test.Hspec
import HelperSequences.A000720 (a000720)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A000720" $
  it "correctly computes the first 20 elements" $
    take 20 (map a000720 [1..]) `shouldBe` expectedValue where
      expectedValue = [0,1,2,2,3,3,4,4,4,4,5,5,6,6,6,6,7,7,8,8]
