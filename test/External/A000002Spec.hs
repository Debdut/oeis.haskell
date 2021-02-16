module External.A000002Spec (main, spec) where
import Test.Hspec
import External.A000002 (a000002)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A000002" $
  it "correctly computes the first 20 elements" $
    take 20 (map a000002 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,2,1,1,2,1,2,2,1,2,2,1,1,2,1,1,2,2,1]
