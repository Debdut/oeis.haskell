module CoinsInARow.A276166Spec (main, spec) where
import Test.Hspec
import CoinsInARow.A276166 (a276166)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A276166" $
  it "correctly computes the first 26 elements" $
      map a276166 [0..25] `shouldBe` expectedValue where
        expectedValue = [0,1,2,1,3,2,2,2,4,3,2,3,3,2,3,2,5,4,3,4,3,3,3,3,4,2]
