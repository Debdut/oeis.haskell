module SqrtMultiples.A261865Spec (main, spec) where
import Test.Hspec
import SqrtMultiples.A261865 (a261865)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A261865" $
  it "correctly computes the first 20 elements" $
    take 20 (map a261865 [1..]) `shouldBe` expectedValue where
      expectedValue = [2,2,3,2,2,3,2,2,2,3,2,2,3,2,2,2,3,2,2,3]
