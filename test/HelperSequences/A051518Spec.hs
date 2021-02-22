module HelperSequences.A051518Spec (main, spec) where
import Test.Hspec
import HelperSequences.A051518 (a051518)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A051518" $
  it "correctly computes the first 20 elements" $
    take 20 (map a051518 [1..]) `shouldBe` expectedValue where
      expectedValue = [12,16,18,24,30,32,36,40,42,44,48,50,54,56,60,64,66,68,70,72]
