module RemainderGame.A268058Spec (main, spec) where
import Test.Hspec
import RemainderGame.A268058 (a268058)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A268058" $
  it "correctly computes the first 20 elements" $
    take 20 (map a268058 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,1,2,2,3,2,3,3,3,3,5,3,4,4,3,3,5,4,6,4]
