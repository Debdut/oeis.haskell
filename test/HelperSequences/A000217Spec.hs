module HelperSequences.A000217Spec (main, spec) where
import Test.Hspec
import HelperSequences.A000217 (a000217)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A000217" $
  it "correctly computes the first 20 elements" $
    take 20 (map a000217 [0..]) `shouldBe` expectedValue where
      expectedValue = [0,1,3,6,10,15,21,28,36,45,55,66,78,91,105,120,136,153,171,190]
