module EKG.A169843Spec (main, spec) where
import Test.Hspec
import EKG.A169843 (a169843)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A169843" $
  it "correctly computes the first 20 elements" $
    take 20 (map a169843 [1..]) `shouldBe` expectedValue where
      expectedValue = [6,2,4,8,10,5,15,3,9,12,14,7,21,18,16,20,22,11,33,24]
