module Poset.A073933Spec (main, spec) where
import Test.Hspec
import Poset.A073933 (a073933)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A073933" $
  it "correctly computes the first 20 elements" $
    map a073933 [1..20] `shouldBe` expectedValue where
      expectedValue = [1, 2, 3, 3, 4, 4, 5, 4, 5, 5, 6, 5, 6, 6, 6, 5, 6, 6, 7, 6]
