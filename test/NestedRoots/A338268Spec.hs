module NestedRoots.A338268Spec (main, spec) where
import Test.Hspec
import NestedRoots.A338268 (a338268)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A338268" $
  it "correctly computes the first 20 elements" $
    map a338268 [1..20] `shouldBe` expectedValue where
      expectedValue = [1,0,0,0,2,0,0,0,2,0,0,0,2,0,0,2,0,4,0,0]
