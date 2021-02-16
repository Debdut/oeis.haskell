module External.A227192Spec (main, spec) where
import Test.Hspec
import External.A227192 (a227192)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A227192" $
  it "correctly computes the first 20 elements" $
    take 20 (map a227192 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,3,2,5,6,4,3,7,8,10,9,6,7,5,4,9,10,12,11,14]
