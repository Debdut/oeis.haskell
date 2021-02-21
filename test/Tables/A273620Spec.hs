module Tables.A273620Spec (main, spec) where
import Test.Hspec
import Tables.A273620 (a273620)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A273620" $
  it "correctly computes the first 20 elements" $
    take 20 (map a273620 [1..]) `shouldBe` expectedValue where
      expectedValue = [2,3,1,4,2,1,5,4,3,2,6,4,3,4,2,7,5,5,4,2]
