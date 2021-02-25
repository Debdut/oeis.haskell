module HypercubeColorings.A333333Spec (main, spec) where
import Test.Hspec
import HypercubeColorings.A333333 (a333333)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A333333" $
  it "correctly computes the first 13 elements" $
    map a333333 [1..13] `shouldBe` expectedValue where
      expectedValue = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 4, 9]
