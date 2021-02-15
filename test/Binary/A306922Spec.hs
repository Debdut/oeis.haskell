module Binary.A306922Spec (main, spec) where
import Test.Hspec
import Binary.A306922 (a306922)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A306922" $
  it "correctly computes the first 20 elements" $
      map a306922 [0..19] `shouldBe` expectedValue where
        expectedValue = [1,2,1,3,1,1,1,4,1,2,1,1,1,1,2,5,1,2,1,2]
