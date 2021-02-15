module EKG.A268611Spec (main, spec) where
import Test.Hspec
import EKG.A268611 (a268611)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A268611" $
  it "correctly computes the first 20 elements" $
    take 20 (map a268611 [1..]) `shouldBe` expectedValue where
      expectedValue = [0,2,1,0,1,0,5,0,1,0,-1,6,1,0,-1,8,-1,2,3,2]
