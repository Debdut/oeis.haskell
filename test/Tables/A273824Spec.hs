module Tables.A273824Spec (main, spec) where
import Test.Hspec
import Tables.A273824 (a273824)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A273824" $
  it "correctly computes the first 20 elements" $
    take 20 (map a273824 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,3,1,4,5,2,6,3,1,7,8,4,9,5,2,10,6,3,1]
