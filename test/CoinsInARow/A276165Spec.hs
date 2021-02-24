module CoinsInARow.A276165Spec (main, spec) where
import Test.Hspec
import CoinsInARow.A276165 (a276165)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A276165" $
  it "correctly computes the first 26 elements" $
      map a276165 [0..25] `shouldBe` expectedValue where
        expectedValue = [0,1,2,0,3,1,1,1,4,2,0,2,2,0,2,0,5,3,1,3,1,1,1,1,3,-1]
