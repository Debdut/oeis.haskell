module RemainderGame.A268059Spec (main, spec) where
import Test.Hspec
import RemainderGame.A268059 (a268059)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A268059" $
  it "correctly computes the first 20 elements" $
    take 20 (map a268059 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,1,1,1,2,2,1,2,2,1,1,1,1,4,4,2,1,1,1]
