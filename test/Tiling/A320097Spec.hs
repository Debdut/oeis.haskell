module Tiling.A320097Spec (main, spec) where
import Test.Hspec
import Tiling.A320097 (a320097)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A320097" $
  it "correctly computes the first 5 elements" $
    take 5 (map a320097 [1..]) `shouldBe` expectedValue where
      expectedValue = [1, 15, 463, 16372, 583199]
