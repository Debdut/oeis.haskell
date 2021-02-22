module HelperSequences.A002262Spec (main, spec) where
import Test.Hspec
import HelperSequences.A002262 (a002262)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A002262" $
  it "correctly computes the first 22 elements" $
    take 22 (map a002262 [0..]) `shouldBe` expectedValue where
      expectedValue = [0,0,1,0,1,2,0,1,2,3,0,1,2,3,4,0,1,2,3,4,5,0]
