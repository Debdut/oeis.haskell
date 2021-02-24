module Walk.A329278Spec (main, spec) where
import Test.Hspec
import Walk.A329278 (a329278)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A329278" $
  it "correctly computes the first 15 elements" $
    map a329278 [0..14] `shouldBe` expectedValue where
      expectedValue = [0,0,1,0,1,3,2,0,1,3,6,2,7,5,4]
