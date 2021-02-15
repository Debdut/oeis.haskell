module EKG.A169839Spec (main, spec) where
import Test.Hspec
import EKG.A169839 (a169839)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A169839" $
  it "correctly computes the first 20 elements" $
    take 20 (map a169839 [1..]) `shouldBe` expectedValue where
      expectedValue = [4,2,6,3,9,12,8,10,5,15,18,14,7,21,24,16,20,22,11,33]
