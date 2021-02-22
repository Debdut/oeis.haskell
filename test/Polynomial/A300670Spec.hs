module Polynomial.A300670Spec (main, spec) where
import Test.Hspec
import Polynomial.A300670 (a300670)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A300670" $
  it "correctly computes the first 21 elements" $
    map a300670 [1..21] `shouldBe` expectedValue where
      expectedValue = [1,2,1,3,2,1,4,4,2,1,5,3,4,2,1,6,6,3,4,2,1]
