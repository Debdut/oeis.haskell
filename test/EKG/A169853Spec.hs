module EKG.A169853Spec (main, spec) where
import Test.Hspec
import EKG.A169853 (a169853)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A169853" $
  it "correctly computes the first 20 elements" $
    take 20 (map a169853 [1..]) `shouldBe` expectedValue where
      expectedValue = [11,22,2,4,6,3,9,12,8,10,5,15,18,14,7,21,24,16,20,25]
