module Tiling.A301976Spec (main, spec) where
import Test.Hspec
import Tiling.A301976 (a301976)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A301976" $
  it "correctly computes the first 10 elements" $
    take 10 (map a301976 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,5,43,463,5193,58653,663203,7500343,84825873,959351093]
