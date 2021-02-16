module External.A064894Spec (main, spec) where
import Test.Hspec
import External.A064894 (a064894)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A064894" $
  it "correctly computes the first 25 elements" $
    take 25 (map a064894 [0..]) `shouldBe` expectedValue where
      expectedValue = [0,0,1,1,2,2,1,1,3,3,1,1,1,1,1,1,4,4,1,1,2,2,1,1,1]
