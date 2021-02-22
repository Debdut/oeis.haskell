module HelperSequences.A000045Spec (main, spec) where
import Test.Hspec
import HelperSequences.A000045 (a000045)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A000045" $
  it "correctly computes the first 20 elements" $
    take 20 (map a000045 [0..]) `shouldBe` expectedValue where
      expectedValue = [0,1,1,2,3,5,8,13,21,34,55,89,144,233,377,610,987,1597,2584,4181]
