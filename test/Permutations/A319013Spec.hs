module Permutations.A319013Spec (main, spec) where
import Test.Hspec
import Permutations.A319013 (a319013)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A319013" $
  it "correctly computes the first ten elements" $
    map a319013 [1..10] `shouldBe` expectedValue where
      expectedValue = [0, 1, 7, 37, 201, 1231, 8653, 69273, 623521, 6235291]
