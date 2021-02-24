module CoinsInARow.A276164Spec (main, spec) where
import Test.Hspec
import CoinsInARow.A276164 (a276164)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A276164" $
  it "correctly computes the first 5 elements" $
      map a276164 [1..5] `shouldBe` expectedValue where
        expectedValue = [1, 2, 4, 7, 10]
