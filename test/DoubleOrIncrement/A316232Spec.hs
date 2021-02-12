module DoubleOrIncrement.A316232Spec (main, spec) where
import Test.Hspec
import DoubleOrIncrement.A316232 (a316232)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A316232" $
  it "correctly computes the first 20 elements" $
      map a316232 [0..19] `shouldBe` expectedValue where
        expectedValue = [0,4,1,12,4,2,16,8,4,3,16,12,36,164,4,16,8,12,6,68]
