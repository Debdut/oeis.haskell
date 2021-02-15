module EKG.A169845Spec (main, spec) where
import Test.Hspec
import EKG.A169845 (a169845)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A169845" $
  it "correctly computes the first 20 elements" $
    take 20 (map a169845 [1..]) `shouldBe` expectedValue where
      expectedValue = [7,14,2,4,6,3,9,12,8,10,5,15,18,16,20,22,11,33,21,24]
