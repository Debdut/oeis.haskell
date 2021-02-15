module EKG.A064413Spec (main, spec) where
import Test.Hspec
import EKG.A064413 (a064413)


main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A064413" $
  it "correctly computes the first 20 elements" $
    take 20 (map a064413 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,4,6,3,9,12,8,10,5,15,18,14,7,21,24,16,20,22,11]
