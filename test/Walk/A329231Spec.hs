module Walk.A329231Spec (main, spec) where
import Test.Hspec
import Walk.A329231 (a329231)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A329231" $
  it "correctly computes the first 20 elements" $
    map a329231 [1..20] `shouldBe` expectedValue where
      expectedValue = [1,1,1,1,3,2,1,1,4,3,3,3,3,3,3,1,5,2,3,3]
