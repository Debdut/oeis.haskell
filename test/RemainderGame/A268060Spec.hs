module RemainderGame.A268060Spec (main, spec) where
import Test.Hspec
import RemainderGame.A268060 (a268060)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A268060" $
  it "correctly computes the first 20 elements" $
    take 20 (map a268060 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,1,2,3,3,4,4,5,5,6,7,7,8,9,8,9,10,11,12,13]
