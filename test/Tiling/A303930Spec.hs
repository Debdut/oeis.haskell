module Tiling.A303930Spec (main, spec) where
import Test.Hspec
import Tiling.A303930 (a303930)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A303930" $
  it "correctly computes the first 10 elements" $
    take 10 (map a303930 [1..]) `shouldBe` expectedValue where
      expectedValue = [1, 2, 4, 10, 26, 76, 232, 750, 2493, 8514]
