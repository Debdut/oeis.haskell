module SubprimeFib.A282812Spec (main, spec) where
import Test.Hspec
import SubprimeFib.A282812 (a282812)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A282812" $
  it "correctly computes the first 20 elements" $
    take 20 (map a282812 [1..]) `shouldBe` expectedValue where
      expectedValue = [239,239,239,239,2,239,347,239,239,347,239,239,3,239,347,239,239,239,347,239]
