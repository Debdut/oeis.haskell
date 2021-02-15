module EKG.A065519Spec (main, spec) where
import Test.Hspec
import EKG.A065519 (a065519)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A065519" $
  it "correctly computes the first 20 elements" $
    take 20 (map a065519 [1..]) `shouldBe` expectedValue where
      expectedValue = [0,0,1,2,-2,3,5,0,1,-5,4,6,1,-7,6,8,-1,2,3,-9]
