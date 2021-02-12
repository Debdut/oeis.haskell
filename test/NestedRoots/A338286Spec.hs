module NestedRoots.A338286Spec (main, spec) where
import Test.Hspec
import NestedRoots.A338286 (a338286)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A338286" $
  it "correctly computes the first 20 elements" $
    map a338286 [0..19] `shouldBe` expectedValue where
      expectedValue = [2,2,2,4,6,8,14,20,28,44,68,98,148,224,332,500,754,1122,1682,2530]
