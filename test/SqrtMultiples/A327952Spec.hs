module SqrtMultiples.A327952Spec (main, spec) where
import Test.Hspec
import SqrtMultiples.A327952 (a327952)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A327952" $
  it "correctly computes the first ten elements" $
    map a327952 [1..10] `shouldBe` expectedValue where
      expectedValue = [2, 5, 7, 11, 14, 17, 20, 24, 26, 29]
