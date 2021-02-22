module Polynomial.A330541Spec (main, spec) where
import Test.Hspec
import Polynomial.A330541 (a330541)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A330541" $
  it "correctly computes the first 20 elements" $
    map a330541 [2..21] `shouldBe` expectedValue where
      expectedValue = [2,6,2,2,12,2,30,2,24,2,2,60,2,24,2,42,2,120,2,24]
