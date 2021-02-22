module Polynomial.A330590Spec (main, spec) where
import Test.Hspec
import Polynomial.A330590 (a330590)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A330590" $
  it "correctly computes the first 20 elements" $
    map a330590 [2..21] `shouldBe` expectedValue where
      expectedValue = [2, 4, 2, 2, 6, 2, 8, 2, 8, 2, 2, 12, 2, 8, 2, 8, 2, 16, 2, 8]
