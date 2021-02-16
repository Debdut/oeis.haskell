module External.A053797Spec (main, spec) where
import Test.Hspec
import External.A053797 (a053797)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A053797" $
  it "correctly computes the first 20 elements" $
    take 20 (map a053797 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,1,1,1,1,2,2,1,1,1,2,3,1,1,1,1,2,1,1]
