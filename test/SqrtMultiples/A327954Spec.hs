module SqrtMultiples.A327954Spec (main, spec) where
import Test.Hspec
import SqrtMultiples.A327954 (a327954)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A327954" $
  it "correctly computes the first 20 elements" $
    map a327954 [1..10] `shouldBe` expectedValue where
      expectedValue = [1, 0, 2, 1, 1, 1, 2, 0, 1, 1]
