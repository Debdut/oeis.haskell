module External.A096111Spec (main, spec) where
import Test.Hspec
import External.A096111 (a096111)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A096111" $
  it "correctly computes the first 20 elements" $
    take 20 (map a096111 [0..]) `shouldBe` expectedValue where
      expectedValue = [1,2,2,3,3,6,6,4,4,8,8,12,12,24,24,5,5,10,10,15]
