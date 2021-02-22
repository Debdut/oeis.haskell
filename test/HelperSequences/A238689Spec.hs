module HelperSequences.A238689Spec (main, spec) where
import Test.Hspec
import HelperSequences.A238689 (a238689)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A238689" $
  it "correctly computes the first 20 elements" $
    take 20 (map a238689 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,3,2,2,5,3,2,7,2,2,2,3,3,5,2,11,3,2,2]
