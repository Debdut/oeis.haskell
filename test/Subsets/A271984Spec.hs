module Subsets.A271984Spec (main, spec) where
import Test.Hspec
import Subsets.A271984 (a271984)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A271984" $
  it "correctly computes the first 20 elements" $
    take 20 (map a271984 [0..]) `shouldBe` expectedValue where
      expectedValue = [34,35,36,37,38,39,44,45,46,47,50,51,52,53,54,55,60,61,62,63]
