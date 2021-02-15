module SubprimeFib.A214674Spec (main, spec) where
import Test.Hspec
import SubprimeFib.A214674 (a214674)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A214674" $
  it "correctly computes the first 20 elements" $
    take 20 (map a214674 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,1,2,3,5,4,3,7,5,6,11,17,14,31,15,23,19,21,20,41]
