module Miscellaneous.A337633Spec (main, spec) where
import Test.Hspec
import Miscellaneous.A337633 (a337633)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A337633" $
  it "correctly computes the first 20 elements" $
    map a337633 [1..20] `shouldBe` expectedValue where
      expectedValue = [1,1,2,1,1,2,1,2,2,1,1,1,2,3,2,1,2,4,2,4]
