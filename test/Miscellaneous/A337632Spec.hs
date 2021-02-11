module Miscellaneous.A337632Spec (main, spec) where
import Test.Hspec
import Miscellaneous.A337632 (a337632)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A337632" $
  it "correctly computes the first 20 elements" $
    map a337632 [1..20] `shouldBe` expectedValue where
      expectedValue = [1,1,2,1,3,2,1,4,2,3,1,5,2,3,2,1,6,4,6,4]
