module HelperSequences.A000196Spec (main, spec) where
import Test.Hspec
import HelperSequences.A000196 (a000196)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A000196" $
  it "correctly computes the first 20 elements" $
    take 20 (map a000196 [0..]) `shouldBe` expectedValue where
      expectedValue = [0,1,1,1,2,2,2,2,2,3,3,3,3,3,3,3,4,4,4,4]
