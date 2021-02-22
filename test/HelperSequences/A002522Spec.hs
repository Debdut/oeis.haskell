module HelperSequences.A002522Spec (main, spec) where
import Test.Hspec
import HelperSequences.A002522 (a002522)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A002522" $
  it "correctly computes the first 20 elements" $
    take 20 (map a002522 [0..]) `shouldBe` expectedValue where
      expectedValue = [1,2,5,10,17,26,37,50,65,82,101,122,145,170,197,226,257,290,325,362]
