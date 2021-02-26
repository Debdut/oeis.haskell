module Delahaye.A337655Spec (main, spec) where
import Test.Hspec
import Delahaye.A337655 (a337655)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A337655" $
  it "correctly computes the first 20 elements" $
    take 20 (map a337655 [1..]) `shouldBe` expectedValue where
      expectedValue = [1, 2, 5, 7, 15, 22, 31, 50, 68, 90, 101, 124, 163, 188, 215, 253, 322, 358, 455, 486]
