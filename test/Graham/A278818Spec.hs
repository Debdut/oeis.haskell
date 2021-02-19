module Graham.A278818Spec (main, spec) where
import Test.Hspec
import Graham.A278818 (a278818)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A278818" $
  it "correctly computes the first 20 elements" $
    take 20 (map a278818 [0..]) `shouldBe` expectedValue where
      expectedValue = [1,3,7,6,5,11,10,9,17,16,15,14,13,23,22,21,20,19,31,30]
