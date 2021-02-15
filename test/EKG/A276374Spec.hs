module EKG.A276374Spec (main, spec) where
import Test.Hspec
import EKG.A276374 (a276374)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A276374" $
  it "correctly computes the first 20 elements" $
    take 20 (map a276374 [1..]) `shouldBe` expectedValue where
      expectedValue = [5,6,8,13,14,24,26,31,32,34,51,54,57,62,69,82,83,93,99,113]
