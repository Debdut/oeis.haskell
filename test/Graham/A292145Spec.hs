module Graham.A292145Spec (main, spec) where
import Test.Hspec
import Graham.A292145 (a292145)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A292145" $
  it "correctly computes the first 20 elements" $
    take 20 (map a292145 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,4,3,9,8,5,6,16,12,7,18,25,10,11,20,27,36,32,13]
