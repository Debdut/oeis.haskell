module Graham.A255363Spec (main, spec) where
import Test.Hspec
import Graham.A255363 (a255363)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A255363" $
  it "correctly computes the first 20 elements" $
    take 20 (map a255363 [1..]) `shouldBe` expectedValue where
      expectedValue = [5,7,11,13,14,17,19,21,22,23,26,29,31,33,34,37,38,39,41,43]
