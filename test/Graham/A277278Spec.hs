module Graham.A277278Spec (main, spec) where
import Test.Hspec
import Graham.A277278 (a277278)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A277278" $
  it "correctly computes the first 20 elements" $
    take 20 (map a277278 [0..]) `shouldBe` expectedValue where
      expectedValue = [0,1,4,6,4,10,10,9,14,9,14,13,13,18,18,18,16,19,22,23]
