module NestedRoots.A338271Spec (main, spec) where
import Test.Hspec
import NestedRoots.A338271 (a338271)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A338271" $
  it "correctly computes the first 20 elements" $
    map a338271 [1..20] `shouldBe` expectedValue where
      expectedValue = [1,0,0,2,0,2,0,2,2,4,2,6,2,8,4,14,6,20,8,28]
