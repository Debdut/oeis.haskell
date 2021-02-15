module EKG.A169841Spec (main, spec) where
import Test.Hspec
import EKG.A169841 (a169841)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A169841" $
  it "correctly computes the first 20 elements" $
    take 20 (map a169841 [1..]) `shouldBe` expectedValue where
      expectedValue = [5,10,2,4,6,3,9,12,8,14,7,21,15,18,16,20,22,11,33,24]
