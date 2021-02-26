module Delahaye.A337946Spec (main, spec) where
import Test.Hspec
import Delahaye.A337946 (a337946)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A337946" $
  it "correctly computes the first 20 elements" $
    take 20 (map a337946 [1..]) `shouldBe` expectedValue where
      expectedValue = [1, 3, 7, 12, 22, 30, 47, 61, 85, 113, 126, 177, 193, 246, 279, 321, 341, 428, 499, 571]
