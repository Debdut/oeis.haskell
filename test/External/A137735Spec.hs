module External.A137735Spec (main, spec) where
import Test.Hspec
import External.A137735 (a137735)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A137735" $
  it "correctly computes the first 20 elements" $
    take 20 (map a137735 [0..]) `shouldBe` expectedValue where
      expectedValue = [1,1,2,1,2,2,3,2,2,3,3,3,4,3,3,3,4,4,4,4]
