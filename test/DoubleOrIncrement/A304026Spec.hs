module DoubleOrIncrement.A304026Spec (main, spec) where
import Test.Hspec
import DoubleOrIncrement.A304026 (a304026)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A304026" $
  it "correctly computes the first 20 elements" $
      map a304026 [0..19] `shouldBe` expectedValue where
        expectedValue = [0,3,5,8,7,6,5,6,12,11,10,9,12,11,11,10,10,9,8,16]
