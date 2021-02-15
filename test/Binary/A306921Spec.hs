module Binary.A306921Spec (main, spec) where
import Test.Hspec
import Binary.A306921 (a306921)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A306921" $
  it "correctly computes the first 20 elements" $
      map a306921 [0..19] `shouldBe` expectedValue where
        expectedValue = [1,1,2,2,3,3,4,4,4,4,6,6,6,6,8,8,5,5,8,8]
