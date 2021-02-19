module Graham.A300518Spec (main, spec) where
import Test.Hspec
import Graham.A300518 (a300518)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A300518" $
  it "correctly computes up to a(10)" $
    map a300518 [1..10] `shouldBe` expectedValue where
      expectedValue = [1, 2, 3, 1, 5, 3, 7, 2, 1, 5]
