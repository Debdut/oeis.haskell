module Walk.A324603Spec (main, spec) where
import Test.Hspec
import Walk.A324603 (a324603)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A324603" $
  it "correctly computes the first 10 elements" $
    map a324603 [1..4] `shouldBe` expectedValue where
      expectedValue = [2, 4, 22, 258]
