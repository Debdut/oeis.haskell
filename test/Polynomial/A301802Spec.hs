module Polynomial.A301802Spec (main, spec) where
import Test.Hspec
import Polynomial.A301802 (a301802)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A301802" $
  it "correctly computes the first 6 elements" $
    take 6 (map a301802 [1..]) `shouldBe` expectedValue where
      expectedValue = [1, 2, 4, 18, 48, 216]
