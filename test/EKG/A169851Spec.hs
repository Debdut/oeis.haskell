module EKG.A169851Spec (main, spec) where
import Test.Hspec
import EKG.A169851 (a169851)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A169851" $
  it "correctly computes the first 20 elements" $
    take 20 (map a169851 [1..]) `shouldBe` expectedValue where
      expectedValue = [10,2,4,6,3,9,12,8,14,7,21,15,5,20,16,18,22,11,33,24]
