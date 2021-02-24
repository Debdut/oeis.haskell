module Walk.A329232Spec (main, spec) where
import Test.Hspec
import Walk.A329232 (a329232)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A329232" $
  it "correctly computes the first 20 elements" $
    map a329232 [1..20] `shouldBe` expectedValue where
      expectedValue = [0,0,1,0,2,3,3,0,9,6,4,5,4,5,7,0,18,10,4,7]
