module DoubleOrIncrement.A304027Spec (main, spec) where
import Test.Hspec
import DoubleOrIncrement.A304027 (a304027)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A304027" $
  it "correctly computes the first 20 elements" $
      map a304027 [0..19] `shouldBe` expectedValue where
        expectedValue = [0,3,0,5,2,0,8,3,1,0,7,4,6,10,0,6,3,3,1,7]
