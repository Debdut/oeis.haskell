module Coins.A265415Spec (main, spec) where
import Test.Hspec
import Coins.A265415 (a265415)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A265415" $
  it "correctly computes the first 10 elements" $
    take 10 (map a265415 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,10,21,31,37,101,119,157,197,273]
