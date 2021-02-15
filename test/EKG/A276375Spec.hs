module EKG.A276375Spec (main, spec) where
import Test.Hspec
import EKG.A276375 (a276375)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A276375" $
  it "correctly computes the first 20 elements" $
    take 20 (map a276375 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,3,11,22,29,47,49,52,67,78,79,80,91,103,104,109,111,121,130]
