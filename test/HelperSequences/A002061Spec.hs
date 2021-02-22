module HelperSequences.A002061Spec (main, spec) where
import Test.Hspec
import HelperSequences.A002061 (a002061)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A002061" $
  it "correctly computes the first 20 elements" $
    take 20 (map a002061 [0..]) `shouldBe` expectedValue where
      expectedValue = [1,1,3,7,13,21,31,43,57,73,91,111,133,157,183,211,241,273,307,343]
