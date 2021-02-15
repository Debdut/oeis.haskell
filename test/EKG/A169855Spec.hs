module EKG.A169855Spec (main, spec) where
import Test.Hspec
import EKG.A169855 (a169855)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A169855" $
  it "correctly computes the first 20 elements" $
    take 20 (map a169855 [1..]) `shouldBe` expectedValue where
      expectedValue = [12,2,4,6,3,9,15,5,10,8,14,7,21,18,16,20,22,11,33,24]
