module Braxton.A274701Spec (main, spec) where
import Test.Hspec
import Braxton.A274701 (a274701)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A274701" $
  it "correctly computes the first 20 elements" $
    take 20 (map a274701 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,1,2,2,2,3,2,3,2,3,3,3,3,3,4,3,4,3,4]
