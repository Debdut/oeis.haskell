module HelperSequences.A002024Spec (main, spec) where
import Test.Hspec
import HelperSequences.A002024 (a002024)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A002024" $
  it "correctly computes the first 22 elements" $
    take 22 (map a002024 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,2,3,3,3,4,4,4,4,5,5,5,5,5,6,6,6,6,6,6,7]
