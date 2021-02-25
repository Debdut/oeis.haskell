module HypercubeColorings.A333418Spec (main, spec) where
import Test.Hspec
import HypercubeColorings.A333418 (a333418)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A333418" $
  it "correctly computes the first 12 elements" $
    map a333418 [1..12] `shouldBe` expectedValue where
      expectedValue = [1,1,1,1,2,1,1,1,1,4,9,18]
