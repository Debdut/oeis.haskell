module Polynomial.A330542Spec (main, spec) where
import Test.Hspec
import Polynomial.A330542 (a330542)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A330542" $
  it "correctly computes the first 20 elements" $
    map a330542 [2..21] `shouldBe` expectedValue where
      expectedValue = [2,6,12,30,60,120,252,504,504,504,504,2730,16380,32760,65520,65520,65520,65520,65520,65520]
