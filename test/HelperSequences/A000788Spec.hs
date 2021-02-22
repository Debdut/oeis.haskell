module HelperSequences.A000788Spec (main, spec) where
import Test.Hspec
import HelperSequences.A000788 (a000788)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A000788" $
  it "correctly computes the first 20 elements" $
    take 20 (map a000788 [0..]) `shouldBe` expectedValue where
      expectedValue = [0,1,2,4,5,7,9,12,13,15,17,20,22,25,28,32,33,35,37,40]
