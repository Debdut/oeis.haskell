module SqrtMultiples.A262036Spec (main, spec) where
import Test.Hspec
import SqrtMultiples.A262036 (a262036)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A262036" $
  it "correctly computes the first 20 elements" $
    take 8 (map a262036 [2..]) `shouldBe` expectedValue where
      expectedValue = [1,3,40,61,23,170,99,54]
