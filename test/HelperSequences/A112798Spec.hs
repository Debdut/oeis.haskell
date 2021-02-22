module HelperSequences.A112798Spec (main, spec) where
import Test.Hspec
import HelperSequences.A112798 (a112798)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A112798" $
  it "correctly computes the first 20 elements" $
    take 20 (map a112798 [2..]) `shouldBe` expectedValue where
      expectedValue = [1,2,1,1,3,1,2,4,1,1,1,2,2,1,3,5,1,1,2,6]
