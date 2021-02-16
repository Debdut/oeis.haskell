module External.A001481Spec (main, spec) where
import Test.Hspec
import External.A001481 (a001481)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A001481" $
  it "correctly computes the first 20 elements" $
    map a001481 [1..20] `shouldBe` expectedValue where
      expectedValue = [0,1,2,4,5,8,9,10,13,16,17,18,20,25,26,29,32,34,36,37]
