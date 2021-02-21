module Tables.A051125Spec (main, spec) where
import Test.Hspec
import Tables.A051125 (a051125)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A051125" $
  it "correctly computes the first 20 elements" $
    take 20 (map a051125 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,2,3,2,3,4,3,3,4,5,4,3,4,5,6,5,4,4,5]
