module Tiling.A295229Spec (main, spec) where
import Test.Hspec
import Tiling.A295229 (a295229)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A295229" $
  it "correctly computes the first 10 elements" $
    take 10 (map a295229 [1..]) `shouldBe` expectedValue where
      expectedValue = [1, 6, 84, 8548, 4203520, 8590557312, 70368815480832, 2305843028004192256, 302231454912728264605696, 158456325028538104598816096256]
