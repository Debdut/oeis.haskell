module SqrtMultiples.A327953Spec (main, spec) where
import Test.Hspec
import SqrtMultiples.A327953 (a327953)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A327953" $
  it "correctly computes the first 20 elements" $
    map a327953 [1..10] `shouldBe` expectedValue where
      expectedValue = [0, 1, 1, 3, 4, 5, 6, 8, 8, 9]
