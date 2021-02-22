module HelperSequences.A053645Spec (main, spec) where
import Test.Hspec
import HelperSequences.A053645 (a053645)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A053645" $
  it "correctly computes the first 20 elements" $
    take 20 (map a053645 [1..]) `shouldBe` expectedValue where
      expectedValue = [0,0,1,0,1,2,3,0,1,2,3,4,5,6,7,0,1,2,3,4]
