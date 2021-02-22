module HelperSequences.A003059Spec (main, spec) where
import Test.Hspec
import HelperSequences.A003059 (a003059)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A003059" $
  it "correctly computes the first 20 elements" $
    take 20 (map a003059 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,2,2,3,3,3,3,3,4,4,4,4,4,4,4,5,5,5,5]
