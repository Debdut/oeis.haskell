module Graham.A255167Spec (main, spec) where
import Test.Hspec
import Graham.A255167 (a255167)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A255167" $
  it "correctly computes the first 20 elements" $
    take 20 (map a255167 [1..]) `shouldBe` expectedValue where
      expectedValue = [3,2,4,5,10,12,14,3,7,22,22,7,26,35,36,9,34,5,38,15]
