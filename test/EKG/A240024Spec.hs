module EKG.A240024Spec (main, spec) where
import Test.Hspec
import EKG.A240024 (a240024)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A240024" $
  it "correctly computes the first 20 elements" $
    take 20 (map a240024 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,4,6,8,10,12,9,15,18,14,16,20,22,24,21,27,30,25,35,28]
