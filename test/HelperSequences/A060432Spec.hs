module HelperSequences.A060432Spec (main, spec) where
import Test.Hspec
import HelperSequences.A060432 (a060432)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A060432" $
  it "correctly computes the first 20 elements" $
    take 20 (map a060432 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,3,5,8,11,14,18,22,26,30,35,40,45,50,55,61,67,73,79,85]
