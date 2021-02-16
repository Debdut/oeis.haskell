module External.A185869Spec (main, spec) where
import Test.Hspec
import External.A185869 (a185869)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A185869" $
  it "correctly computes the first 20 elements" $
    take 20 (map a185869 [1..]) `shouldBe` expectedValue where
      expectedValue = [2,7,9,16,18,20,29,31,33,35,46,48,50,52,54,67,69,71,73,75]
