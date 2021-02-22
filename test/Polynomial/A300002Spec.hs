module Polynomial.A300002Spec (main, spec) where
import Test.Hspec
import Polynomial.A300002 (a300002)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A300002" $
  it "correctly computes the first 8 elements" $
    take 8 (map a300002 [1..]) `shouldBe` expectedValue where
      expectedValue = [1, 2, 4, 3, 6, 5, 9, 16]
