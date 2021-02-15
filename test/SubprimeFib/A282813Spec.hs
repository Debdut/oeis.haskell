module SubprimeFib.A282813Spec (main, spec) where
import Test.Hspec
import SubprimeFib.A282813 (a282813)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A282813" $
  it "correctly computes the first 20 elements" $
    take 20 (map a282813 [1..]) `shouldBe` expectedValue where
      expectedValue = [38,47,37,38,1,46,7,45,36,7,47,37,1,34,6,60,38,33,4,44]
