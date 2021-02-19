module Graham.A067565Spec (main, spec) where
import Test.Hspec
import Graham.A067565 (a067565)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A067565" $
  it "correctly computes the first 20 elements" $
    take 20 (map a067565 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,0,0,4,0,2,0,3,9,5,0,6,0,7,8,16,0,10,0,12]
