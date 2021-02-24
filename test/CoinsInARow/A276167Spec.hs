module CoinsInARow.A276167Spec (main, spec) where
import Test.Hspec
import CoinsInARow.A276167 (a276167)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A276167" $
  it "correctly computes the first 26 elements" $
      map a276167 [0..20] `shouldBe` expectedValue where
        expectedValue = [0,0,0,1,0,1,1,1,0,1,2,1,1,2,1,2,0,1,2,1,2]
