module Walk.A329233Spec (main, spec) where
import Test.Hspec
import Walk.A329233 (a329233)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A329233" $
  it "correctly computes the first 20 elements" $
    map a329233 [1..20] `shouldBe` expectedValue where
      expectedValue = [0,0,2,0,4,5,4,0,4,4,6,5,8,5,5,0,13,6,10,6]
