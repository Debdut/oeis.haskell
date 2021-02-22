module HelperSequences.A090701Spec (main, spec) where
import Test.Hspec
import HelperSequences.A090701 (a090701)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A090701" $
  it "correctly computes the first 20 elements" $
    take 20 (map a090701 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,2,2,2,3,3,4,4,4,5,5,5,6,6,6,6,7,7,8]
