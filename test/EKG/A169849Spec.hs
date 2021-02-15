module EKG.A169849Spec (main, spec) where
import Test.Hspec
import EKG.A169849 (a169849)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A169849" $
  it "correctly computes the first 20 elements" $
    take 20 (map a169849 [1..]) `shouldBe` expectedValue where
      expectedValue = [9,3,6,2,4,8,10,5,15,12,14,7,21,18,16,20,22,11,33,24]
