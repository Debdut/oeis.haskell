module External.A181534Spec (main, spec) where
import Test.Hspec
import External.A181534 (a181534)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A181534" $
  it "correctly computes the first 20 elements" $
    take 20 (map a181534 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,3,3,4,5,5,6,7,7,8,9,10,10,11,12,12,13,14,15]
